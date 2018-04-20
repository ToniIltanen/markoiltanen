class Testimonial < ApplicationRecord
  attr_accessor :delete_picture

  validates :name, presence: true
  validates :text, presence: true
  validates :picture, presence: true

  has_attached_file :picture,
                    :styles => {
                        :thumb => "100x100#",
                        :small  => "150x150>",
                        :medium => "200x200" }
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  before_validation { self.picture.clear if self.delete_picture == '1' }
end
