require_relative "../../lib/airplane"

describe Airplane do
	let(:airplane) { Airplane.new("cesna", 10, 150) }

	describe ".new" do
		it "should create Airplane object with type, wing loading, and horsepower as arguments" do
			expect(airplane).to be_a(Airplane)
			expect(airplane.type).to eq("cesna")
			expect(airplane.wing_loading).to eq(10)
			expect(airplane.horsepower).to eq(150)
		end
	end

	describe "#land" do
		it "should change the state of the plane to 'landed'" do
			airplane.start
			airplane.takeoff
			expect(airplane.land).to eq("airplane landed")
		end
	end

	describe "#takeoff" do
		it "should change the state of the plane to 'flying'" do
			airplane.start
			expect(airplane.takeoff).to eq("airplane launched")
		end
	end

	describe "#start" do
		it "should change the state of the plane to 'started'" do
			expect(airplane.start).to eq("airplane started")
		end
	end
end
