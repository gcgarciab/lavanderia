require "rails_helper"

RSpec.describe User, :type => :model do 

	context 'validacion de usuarios' do

		it "usuario valido ?" do
			user1 = FactoryGirl.build(:user)
			expect(user1.save).to eq(true)
		end

		it "nombre vacio ?" do
			user1 = FactoryGirl.build(:not_name)
			expect(user1.save).to eq(false) 
		end

		it "telefono vacio ?" do
			user1 = FactoryGirl.build(:not_phone)
			expect(user1.save).to eq(false) 
		end
		
		it "telefono valido?" do
			user1 = FactoryGirl.build(:invalid_phone)
			expect(user1.save).to eq(false)  
		end
	end	
end