require 'rspec'
require 'dessert'
require 'chef'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:brownie) { Dessert.new("brownie", 100, chef) }

  describe "#initialize" do

    it "sets a type" do
      expect(brownie.type).to eq("brownie")
    end

    it "sets a quantity" do
      expect(brownie.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("Brownie", "100", chef)}.to raise_error(ArgumentError)
    end

  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      brownie.add_ingredient("butter")
      expect(brownie.ingredients).to include("butter")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ["chocolate", "butter", "flour"]
      ingredients.each { |ele| brownie.add_ingredient(ele) }
      expect(brownie.ingredients).to eq(ingredients)
      brownie.mix!
      expect(brownie.ingredients).to_not eq(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(brownie.eat(50)).to eq(50)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { brownie.eat(110) }.to raise_error(StandardError)
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"

  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
