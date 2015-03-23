require_relative 'rails_helper'

describe "Charges" do 
	it "verify there are three lists on the screen" do
		charge = Charge.new
		expect(charge.where(:failed => true)).to exist
	end

	it "verify successful charges list" do
		expect(@charge).to exist
	end

	it "verify failed charges list" do
		expect(@charge_failed).to exist
	end

	it "verify disupted charges list" do
		expect(@charge_disputed).to exist
	end

	it "verify successful charges contains ten items" do
		charge = Charge.new
		expect(charge.where(:paid => true, :disputed => false).count).to eq(5)
	end

	it "verify failed charges contains five items" do
		charge = Charge.new
		expect(charge.where(:failed => true).count).to eq(5)
	end

	it "verify disputed charges contains three items" do
		charge = Charge.new
		expect(charge.where(:disputed => true).count).to eq(3)
	end
end
