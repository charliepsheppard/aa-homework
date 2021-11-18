require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:dessert) { Dessert.new("cookie", 10, "Harry") }

  describe "#initialize" do
    it "sets a type" do 
      expect(dessert.type).to eq("cookie")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients)
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("cookie", "many", "Harry") }.to raise_error('Quantity must be a number')
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(dessert.ingredients).to_not include('sugar')
      dessert.add_ingredient("sugar")
      expect(dessert.ingredients).to include("sugar")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" 
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(dessert.quantity).to eq(10)
      dessert.eat(1)
      expect(dessert.quantity).to eq(9)
    end

    it "raises an error if the amount is greater than the quantity" do
      # expect(dessert.quantity).to eq(10)
      expect { dessert.eat(12) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(chef.name).to eq(chef.titleize)
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(dessert.make_more).to eq(chef.bake(dessert))
    end
  end
end
