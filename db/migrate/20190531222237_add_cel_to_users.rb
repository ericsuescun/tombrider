class AddCelToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :cel, :string
  end
end
