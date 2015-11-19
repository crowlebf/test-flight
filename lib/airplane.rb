class Airplane
	attr_reader :type, :wing_loading, :horsepower
	def initialize(type, wing_loading, horsepower)
		@type = type
		@wing_loading = wing_loading
		@horsepower = horsepower
		@start = false
		@land = false
		@takeoff = false
	end

	def start
		if @start == true
			return "airplane already started"
		else
			@start = true
			return "airplane started"
		end
	end

	def takeoff
		if @start == false
			return "airplane not started, please start"
		else
			@takeoff = true
			return "airplane launched"
		end
	end

	def land
		if @start == false
			return "airplane not started, please start"
		elsif @start == true && @takeoff == false
			return "airplane already on the ground"
		else
			@start = false
			@takeoff = false
			return "airplane landed"
		end
	end
end

airplane = Airplane.new("cesna", 10, 150)
puts airplane.takeoff
puts airplane.start
puts airplane.land
puts airplane.start
puts airplane.takeoff
puts airplane.start
puts airplane.land
puts airplane.takeoff
