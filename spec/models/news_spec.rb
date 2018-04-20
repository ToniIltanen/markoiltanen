require 'rails_helper'

describe News, :type => :model do
  it 'is valid with valid attributes' do

    category = Newscategory.new
    category.name = 'Test'
    category.save

    news = News.new
    news.title = 'test'
    news.text = 'test'
    news.newscategory = category
    news.picture = File.new(Rails.root.join("spec/mocks/testpicture.jpg"))
    expect(news).to be_valid
  end

  it 'is not valid without a title' do
    news = News.new
    news.text = 'test'
    news.newscategory_id = 1
    news.picture = File.new(Rails.root.join("spec/mocks/testpicture.jpg"))
    expect(news).to_not be_valid
  end

  it 'is not valid without a text' do
    news = News.new
    news.title = 'Test'
    news.newscategory_id = 1
    news.picture = File.new(Rails.root.join("spec/mocks/testpicture.jpg"))
    expect(news).to_not be_valid
  end

  it 'is not valid without Newscategory' do
    news = News.new
    news.title = 'Test'
    news.text = 'test'
    news.picture = File.new(Rails.root.join("spec/mocks/testpicture.jpg"))
    expect(news).to_not be_valid
  end

  it 'is not vvalid without picture' do
    news = News.new
    news.title = 'Test'
    news.text = 'test'
    news.newscategory_id = 1
    expect(news).to_not be_valid
  end
end