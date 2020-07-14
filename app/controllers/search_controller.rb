class SearchController < ApplicationController

  def index
    nation =  params["nation"].gsub("_", " ")
    conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com/api/v1")

    response = conn.get("characters") do |req|
      req.params["affiliation"] = "nation"
    end

    json = JSON.parse(response.body, symbolize_names: true)
    @members = []
      json.each do |member|
    @members <<  Member.new({
        name: member[:name],
        allies: member[:allies],
        enemies: member[:enemies],
        affiliation: member[:affiliation],
        url: member[:photoUrl]
        })

    end





  end

end
