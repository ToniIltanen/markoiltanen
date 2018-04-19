class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.time :time
      t.date :date
      t.string :location

      t.timestamps
    end
  end
end
