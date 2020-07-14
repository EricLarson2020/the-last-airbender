class AvatarService

  def members_of_nation(nation)
    modified_nation = modify_nation(nation)

    response = conn.get("characters") do |req|
      req.params["affiliation"] = "#{modified_nation}"
    end

    JSON.parse(response.body, symbolize_names: true)
  end


  def modify_nation(nation)
    nation.gsub("_", " ")
  end

  def conn
    Faraday.new(url: "https://last-airbender-api.herokuapp.com/api/v1")
  end

end
