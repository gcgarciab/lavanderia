require "rails_helper"

RSpec.describe User, :type => :model do
	let(:user) {FactoryGirl.build(:user)}

	context 'Users validation !!!' do

		it "User is OK ?" do
			expect(user.save).to eq(true)
		end

		it "User without name ?" do
			user.name = nil
			expect(user.save).to eq(false) 
		end

		it "User without phone" do
			user.phone = nil
			expect(user.save).to eq(false) 
		end
		
		it "Phone user valid ?" do
			user.phone = '3108823253'
			expect(user.save).to eq(false)  
		end

		it "User without email" do
			user.email = nil
			expect(user.save).to eq(false) 
		end
		
		it "Email user valid ?" do
			user.email = 'gcgarciab@gmail'
			expect(user.save).to eq(false)  
		end
	end	
end