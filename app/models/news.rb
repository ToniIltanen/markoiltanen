class News < ApplicationRecord
  attr_accessor :delete_picture
  belongs_to :newscategory

  validates :title, presence: true
  validates :newscategory_id, :presence => true
  validates :picture, presence: true
  validates :text, presence: true

  has_attached_file :picture,
                    :styles => {
                        :thumb => "100x100#",
                        :small  => "150x150>",
                        :medium => "200x200" }
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  before_validation { self.picture.clear if self.delete_picture == '1' }
end
