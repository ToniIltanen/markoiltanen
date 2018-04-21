class Event < ApplicationRecord
  attr_accessor :delete_picture
  attr_accessor :get_month
  validates :name, presence: true
  validates :description, presence: true
  validates :picture, presence: true
  validates :time, presence: true
  validates :date, presence: true
  validates :location, presence: true

  has_attached_file :picture,
                    :styles => {
                        :thumb => "100x100#",
                        :small  => "150x150>",
                        :medium => "200x200" }
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  before_validation { self.picture.clear if self.delete_picture == '1' }

  def get_month
    case self.date.month
      when 1
        return 'Tam'
      when 2
        return 'Hel'
      when 3
        return 'Maa'
      when 4
        return 'Huh'
      when 5
        return 'Tou'
      when 6
        return 'Kes'
      when 7
        return 'Hei'
      when 8
        return 'Elo'
      when 9
        return 'Syy'
      when 10
        return 'Lok'
      when 11
        return 'Mar'
      when 12
        return 'Jou'
    end
  end
end
