FactoryGirl.define do
	factory :user do
		name 'Camilo Garcia'
		phone '3108823253'

		factory :not_name do
			name ''
		end

		factory :not_phone do
			phone ''
		end

		factory :invalid_phone do
			phone '123334532'
		end
	end
end