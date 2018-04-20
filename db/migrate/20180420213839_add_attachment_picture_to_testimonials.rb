class AddAttachmentPictureToTestimonials < ActiveRecord::Migration[5.2]
  def self.up
    change_table :testimonials do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :testimonials, :picture
  end
end
