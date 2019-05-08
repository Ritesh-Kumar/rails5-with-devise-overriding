class AddNameInUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :role_id, :integer

    create_table :roles do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
