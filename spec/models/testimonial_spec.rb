require 'rails_helper'

describe Testimonial, :type => :model do
  it 'is valid with valid attributes' do
    testimonial = Testimonial.new
    testimonial.name = 'Test'
    testimonial.text = 'Test'
    testimonial.picture = File.new(Rails.root.join("spec/mocks/testpicture.jpg"))
    expect(testimonial).to be_valid
  end
  it 'is not valid without a name' do
    testimonial = Testimonial.new
    testimonial.text = 'Test'
    testimonial.picture = File.new(Rails.root.join("spec/mocks/testpicture.jpg"))
    expect(testimonial).to_not be_valid
  end

  it 'is not valid without a text' do
    testimonial = Testimonial.new
    testimonial.name = 'Test'
    testimonial.picture = File.new(Rails.root.join("spec/mocks/testpicture.jpg"))
    expect(testimonial).to_not be_valid
  end

  it 'is not valid without a picture' do
    testimonial = Testimonial.new
    testimonial.name = 'Test'
    testimonial.text = 'Test'
    expect(testimonial).to_not be_valid
  end
end