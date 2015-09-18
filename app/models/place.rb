class Place < ActiveRecord::Base
	validates :name, :phone, :address_1, presence: true
	validates_length_of :phone, is: 8
	validates_format_of :phone, with: /\A\d{3}-\d{4}\z/ , :message => "- Phone numbers must be in xxx-xxx-xxxx format."
	validates_format_of :address_1, with: /(Cll|Calle|Kr|Cra|Diag.)\s*(\d+[a-z]*\s*\w*)\s*(?:#|No|No.|N°|)\s*(\d+[a-z]*\s*\w*)\s*-*\s*(\d+)/
  validates_length_of :address_1, minimum: 14
	validates_uniqueness_of :phone
	belongs_to :user
end
