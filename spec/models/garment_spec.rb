require "rails_helper"

RSpec.describe Garment, :type => :model do 
  let(:garment) {FactoryGirl.build(:garment)}

  context 'Garment validation !!!' do

    it "Garment is OK ?" do
      expect(garment.save).to eq(true)
    end

    it "Garment without name ?" do
      garment.name = nil
      expect(garment.save).to eq(false) 
    end

    it "Garment name valid ?" do
      garment.name = 'Cha'
      expect(garment.save).to eq(false)
    end

    it "Garment without quantity ?" do
      garment.quantity = nil
      expect(garment.save).to eq(false) 
    end

    xit "Garment quantity valid ?" do
      garment.quantity = 0
      expect(garment.save).to eq(false)
    end
    
    it "Garment without description" do
      garment.description = nil
      expect(garment.save).to eq(false)
    end

    it "Garment description valid ?" do
      garment.description = 'Rj'
      expect(garment.save).to eq(false)
    end

  end 
end 