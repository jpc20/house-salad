class PropublicaService

  def members_of_house(state)
    response = conn.get("/congress/v1/members/house/#{state}/current.json")
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.propublica.org") do |faraday|
      faraday.headers["X-API-KEY"] = ENV['PROBLICA_API_KEY']
      faraday.adapter Faraday.default_adapter
    end
  end

end
