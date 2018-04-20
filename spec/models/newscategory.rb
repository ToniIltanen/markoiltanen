require 'rails_helper'

describe Newscategory, :type => :model do
  it 'is valid with valid attributes' do
    newscategory = Newscategory.new
    newscategory.name = 'Test'
    expect(newscategory).to be_valid
  end
  it 'is not valid without a name' do
    newscategory = Newscategory.new
    expect(newscategory).to_not be_valid
  end
end