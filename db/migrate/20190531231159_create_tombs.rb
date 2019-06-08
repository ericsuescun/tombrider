class CreateTombs < ActiveRecord::Migration[5.2]
  def change
    create_table :tombs do |t|
      t.string :title
      t.text :description
      t.decimal :area
      t.integer :height
      t.integer :width
      t.integer :depth
      t.integer :capacity
      t.string :code
      t.text :notes
      t.integer :price
      t.string :location
      t.string :ready
      t.string :light
      t.date :expdate
      t.string :category
      t.string :entity
      t.string :level
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
