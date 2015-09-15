class User < ActiveRecord::Base
	validates :name, :phone, presence: true
	validates_length_of :phone, is: 12
	validates_format_of :phone, with: /\A\d{3}-\d{3}-\d{4}\z/ , :message => "- Phone numbers must be in xxx-xxx-xxxx format."
	validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i ,:message => "- Email example usermane@domain.com" 
	validates_uniqueness_of :email
	has_many :places
end
