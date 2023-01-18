require 'rails_helper'

RSpec.describe CountryFacade do
  it 'exists' do
    country_facade = CountryFacade.new

    expect(country_facade).to be_an_instance_of(CountryFacade)
  end
  describe 'Class Methods' do
    describe '.random country' do
      it 'should returns country objects',:vcr do
        expect(CountryFacade.random_country).to be_an Array
        expect(CountryFacade.random_country.first).to be_a Object
        first_country = CountryFacade.random_country.first
        expect(first_country.name).to eq("Grenada")
      end
    end
    describe "random_c" do
      it 'should return same country objects but randomized',:vcr do
        expect(CountryFacade.random_c.name ).to be_an(String)
      end
    end
  end
end
