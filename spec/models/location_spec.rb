require 'rails_helper'

describe Location, :type => :model do
  it 'is valid with valid attributes' do
    location = Location.new
    location.name = 'Test'
    expect(location).to be_valid
  end

  it 'is not valid without name' do
    location = Location.new
    expect(location).to_not be_valid
  end
end