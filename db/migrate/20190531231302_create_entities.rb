class CreateEntities < ActiveRecord::Migration[5.2]
  def change
    create_table :entities do |t|
      t.string :name
      t.string :address
      t.string :location
      t.string :tel
      t.string :cel
      t.string :contactname
      t.string :website
      t.string :email
      t.string :contactemail
      t.string :contacttel
      t.string :contactcel

      t.timestamps
    end
  end
end
