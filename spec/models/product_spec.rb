require 'rails_helper'

describe Product do
  it { should have_many(:reviews) }
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :country_of_origin }
  it { should validate_length_of(:name).is_at_most(100) }
  it("titleizes the name of an product") do
    product = Product.create({name: "milk", cost: 4, country_of_origin: "United States"})
    expect(product.name()).to(eq("Milk"))
  end
  it("titleizes the name of country") do
    product = Product.create({name: "milk", cost: 4, country_of_origin: "usa"})
    expect(product.country_of_origin()).to(eq("USA"))
  end
end
