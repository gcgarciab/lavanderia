class User < ActiveRecord::Base
	validates :name, :phone, presence: true
	validates_length_of :phone , is: 10
	
	has_many :places
end
