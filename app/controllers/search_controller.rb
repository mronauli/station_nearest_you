class SearchController < ApplicationController
  def index
    service = StationService.get_station(params)
    @station = Station.new(params)

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
