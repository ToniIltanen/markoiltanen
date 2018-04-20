require 'rails_helper'

describe Info, :type => :model do
  it 'is valid with valid attributes' do
    info = Info.new
    info.title = 'Test'
    info.subtopic = 'Test'
    info.text = 'test'
    expect(info).to be_valid
  end
  it 'is not valid without a title' do
    info = Info.new
    info.subtopic = 'Test'
    info.text = 'test'
    expect(info).to_not be_valid
  end

  it 'is not valid without a subtopic' do
    info = Info.new
    info.title = 'Test'
    info.text = 'test'
    expect(info).to_not be_valid
  end

  it 'is not valid without a text' do
    info = Info.new
    info.title = 'Test'
    info.subtopic = 'Test'
    expect(info).to_not be_valid
  end
end