class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.string :title
      t.date :date
      t.text :text
      t.belongs_to :newscategory, foreign_key: true

      t.timestamps
    end
  end
end
