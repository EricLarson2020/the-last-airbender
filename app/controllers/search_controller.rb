class SearchController < ApplicationController

  def index

    conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com/api/v1")

    response = conn.get('/characters') do |req|
      req.params["affiliation"] = "#{params["nation"]}"

    end

    binding.pry


  end

end
