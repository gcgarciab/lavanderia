class Garment < ActiveRecord::Base
  validates :name, :description, :quantity, presence: true
  validates_length_of :name, :description, minimum: 4
  #validates value of quantity :minimum 1 BUSCAR COMO HACER !!
  belongs_to :order
end
