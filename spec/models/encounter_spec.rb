require 'rails_helper'

describe Encounter, :type => :model do
  it 'is valid with valid attributes' do
    location = Location.new
    location.name = 'Test'
    location.save
    encounter = Encounter.new
    encounter.title = 'Test'
    encounter.picture = File.new(Rails.root.join("spec/mocks/testpicture.jpg"))
    encounter.location = location
    expect(encounter).to be_valid
  end
  it 'is not valid without a title' do
    location = Location.new
    location.name = 'Test'
    location.save
    encounter = Encounter.new
    encounter.picture = File.new(Rails.root.join("spec/mocks/testpicture.jpg"))
    encounter.location = location
    expect(encounter).to_not be_valid
  end

  it 'is not valid without a picture' do
    location = Location.new
    location.name = 'Test'
    location.save
    encounter = Encounter.new
    encounter.title = 'Test'
    encounter.location = location
    expect(encounter).to_not be_valid
  end

  it 'is not valid without a Location' do
    encounter = Encounter.new
    encounter.title = 'Test'
    encounter.picture = File.new(Rails.root.join("spec/mocks/testpicture.jpg"))
    expect(encounter).to_not be_valid
  end
end