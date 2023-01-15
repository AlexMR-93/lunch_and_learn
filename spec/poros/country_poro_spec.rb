require "rails_helper"
RSpec.describe Country do
  it 'create a Country poro based on attribute' do

    data = {:name=>{:common=>"Grenada", :official=>"Grenada", :nativeName=>{:eng=>{:official=>"Grenada", :common=>"Grenada"}}},
            :tld=>[".gd"],
            :cca2=>"GD",
            :ccn3=>"308",
            :cca3=>"GRD",
            :cioc=>"GRN",
            :independent=>true,
            :status=>"officially-assigned"
    }
    country = Country.new(data)
    expect(country).to be_a(Country)
    expect(country.name).to eq("Grenada")
  end
end
