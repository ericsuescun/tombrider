class CreateTombs < ActiveRecord::Migration[5.2]
  def change
    create_table :tombs do |t|
      t.string :title
      t.text :description
      t.integer :area
      t.integer :capacity
      t.string :code
      t.text :notes
      t.decimal :price
      t.string :location
      t.boolean :ready
      t.date :expdate
      t.integer :category
      t.string :entity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
