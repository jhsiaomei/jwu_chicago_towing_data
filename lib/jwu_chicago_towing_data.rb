require "jwu_chicago_towing_data/version"

module JwuChicagoTowingData
  class Car
    attr_reader :inventory_number, :style, :color, :location, :state, :plate, :location_phone, :tow_date, :make

    def initialize(input_options)
      @inventory_number = input_options["inventory_number"]
      @style = input_options["style"]
      @color = input_options["color"]
      @location = input_options["towed_to_address"]
      @state = input_options["state"]
      @plate = input_options["plate"]
      @location_phone = input_options["tow_facility_phone"]
      @tow_date = input_options["tow_date"]
      @make = input_options["make"]
    end

    def self.all
      data = Unirest.get('https://data.cityofchicago.org/resource/ygr5-vcbg.json').body
      create_array(data)
    end

    def self.findn(input_parameter)
      data = Unirest.get("https://data.cityofchicago.org/resource/ygr5-vcbg.json?$q=#{input_parameter}").body
      create_array(data)
    end

    private

    def self.create_array(input_data)
      data_array = []
      input_data.each do |car_data|
        data_array << Car.new(car_data)
      end
      data_array
    end
  end
end
