require 'rails_helper'

describe Event, :type => :model do
  it 'is valid with valid attributes' do
    event = Event.new
    event.name = 'Test'
    event.location = 'Test'
    event.description = 'Test'
    event.time = Time.current
    event.date = Date.current
    event.picture = File.new(Rails.root.join("spec/mocks/testpicture.jpg"))
    expect(event).to be_valid
  end
  it 'is not valid without a name' do
    event = Event.new
    event.location = 'Test'
    event.description = 'Test'
    event.time = Time.current
    event.date = Date.current
    event.picture = File.new(Rails.root.join("spec/mocks/testpicture.jpg"))
    expect(event).to_not be_valid
  end

  it 'is not valid without a description' do
    event = Event.new
    event.name = 'Test'
    event.location = 'Test'
    event.time = Time.current
    event.date = Date.current
    event.picture = File.new(Rails.root.join("spec/mocks/testpicture.jpg"))
    expect(event).to_not be_valid
  end

  it 'is not valid without a location' do
    event = Event.new
    event.name = 'Test'
    event.description = 'Test'
    event.time = Time.current
    event.date = Date.current
    event.picture = File.new(Rails.root.join("spec/mocks/testpicture.jpg"))
    expect(event).to_not be_valid
  end

  it 'is not valid without a time' do
    event = Event.new
    event.name = 'Test'
    event.location = 'Test'
    event.description = 'Test'
    event.date = Date.current
    event.picture = File.new(Rails.root.join("spec/mocks/testpicture.jpg"))
    expect(event).to_not be_valid
  end

  it 'is not valid without a date' do
    event = Event.new
    event.name = 'Test'
    event.location = 'Test'
    event.description = 'Test'
    event.time = Time.current
    event.picture = File.new(Rails.root.join("spec/mocks/testpicture.jpg"))
    expect(event).to_not be_valid
  end

  it 'is not valid without a picture' do
    event = Event.new
    event.name = 'Test'
    event.location = 'Test'
    event.description = 'Test'
    event.time = Time.current
    event.date = Date.current
    expect(event).to_not be_valid
  end

end