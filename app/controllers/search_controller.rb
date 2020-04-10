class SearchController < ApplicationController
  def index
    conn = Faraday.new("https://developer.nrel.gov") do |f|
      f.adapter Faraday.default_adapter
      f.params['api_key'] = ENV['NREL_KEY']
      f.params['location'] = params["location"]
      f.params['format'] = "json"
    end
    response = conn.get("/api/alt-fuel-stations/v1/nearest")
    json = JSON.parse(response.body, symbolized: true)
    @nearest_station = json["fuel_stations"][0]

    # conn = Faraday.new("https://maps.googleapis.com") do |f|
    #   f.adapter Faraday.default_adapter
    #   f.params['key'] = ENV['GOOGLE_API_KEY']
    #   f.params['origin'] = params["location"]
    #   f.params['destination'] = "#{@nearest_station['latitude']},#{@nearest_station['longitude']}"
    #   f.params['outputFormat'] = "json"
    # end
    # response = conn.get("/maps/api/v1/directions")
    # json = JSON.parse(response.body, symbolized: true)
    # @address_info = json....
  end
end
