require "rails_helper"

RSpec.describe Place, :type => :model do
	let(:place) {FactoryGirl.build(:place)}

	context 'Places validation !!!' do

		it "Place is OK ?" do
			expect(place.save).to eq(true)
		end

		it "User without name ?" do
			place.name = nil
			expect(place.save).to eq(false) 
		end

		it "User without phone" do
			place.phone = nil
			expect(place.save).to eq(false) 
		end
		
		it "Phone place valid ?" do
			place.phone = '692-3994'
			expect(place.save).to eq(true)  
		end

		it "User without address" do
			place.address_1 = nil
			place.address_2 = nil
			expect(place.save).to eq(false) 
		end
		
		# Verificar la validacion de las direcciones !!!! 
		it "Address place valid ?" do
			place.address_1 = 'Cra 19 - 85'
			expect(place.save).to eq(false)  
		end

	end	
end