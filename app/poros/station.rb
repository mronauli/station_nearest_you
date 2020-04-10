class Station
  attr_reader :name, :address, :fuel, :times
  def initialize(data)
    @name = data["station_name"]
    @address = data['street_address']
    @fuel = data["fuel_type_code"]
    @times = data["access_days_time"]
  end
end
