class CreateNewscategories < ActiveRecord::Migration[5.2]
  def change
    create_table :newscategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
