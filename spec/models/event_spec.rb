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

  it 'should validate month string conversions' do
    jan = Event.new(date: "1-1-2012".to_date)
    feb = Event.new(date: "2-2-2012".to_date)
    mar = Event.new(date: "3-3-2012".to_date)
    apr = Event.new(date: "4-4-2012".to_date)
    may = Event.new(date: "5-5-2012".to_date)
    jun = Event.new(date: "6-6-2012".to_date)
    jul = Event.new(date: "7-7-2012".to_date)
    aug = Event.new(date: "8-8-2012".to_date)
    sep = Event.new(date: "9-9-2012".to_date)
    oct = Event.new(date: "10-10-2012".to_date)
    nov = Event.new(date: "11-11-2012".to_date)
    dec = Event.new(date: "12-12-2012".to_date)

    expect(jan.get_month).to eq 'Tam'
    expect(feb.get_month).to eq 'Hel'
    expect(mar.get_month).to eq 'Maa'
    expect(apr.get_month).to eq 'Huh'
    expect(may.get_month).to eq 'Tou'
    expect(jun.get_month).to eq 'Kes'
    expect(jul.get_month).to eq 'Hei'
    expect(aug.get_month).to eq 'Elo'
    expect(sep.get_month).to eq 'Syy'
    expect(oct.get_month).to eq 'Lok'
    expect(nov.get_month).to eq 'Mar'
    expect(dec.get_month).to eq 'Jou'


  end

end