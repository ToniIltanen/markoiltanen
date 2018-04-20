class AddAttachmentPictureToEncounters < ActiveRecord::Migration[5.2]
  def self.up
    change_table :encounters do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :encounters, :picture
  end
end
