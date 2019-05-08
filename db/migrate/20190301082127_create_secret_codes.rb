class CreateSecretCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :secret_codes do |t|
      t.integer :user_id
      t.string :scode
      t.timestamps null: false
    end
  end
end
