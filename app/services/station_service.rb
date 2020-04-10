class StationService
  def self.get_station(params)
    conn = Faraday.new("https://developer.nrel.gov") do |f|
      f.adapter Faraday.default_adapter
      f.params['api_key'] = ENV['NREL_KEY']
      f.params['location'] = params["location"]
      f.params['format'] = "json"
    end
    response = conn.get("/api/alt-fuel-stations/v1/nearest")
    json = JSON.parse(response.body, symbolized: true)
  end
end
