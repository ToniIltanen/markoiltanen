class Info < ApplicationRecord
  validates :title, presence: true
  validates :subtopic, presence: true
  validates :text, presence: true
end
