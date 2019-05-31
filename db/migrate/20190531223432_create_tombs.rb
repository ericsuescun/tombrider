class CreateTombs < ActiveRecord::Migration[5.2]
  def change
    create_table :tombs do |t|
      t.string :title
      t.text :description
      t.integer :area
      t.integer :capacity
      t.string :code
      t.text :notes
      t.string :price
      t.string :decimal
      t.string :location
      t.boolean :public
      t.date :expdate
      t.integer :type
      t.references :user, foreign_key: true
      t.references :entity, foreign_key: true

      t.timestamps
    end
  end
end
