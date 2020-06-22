class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
        t.string :username, null: false, unique: true
        t.string :password_digest, null: false, unique: true
        t.string :session_token, null: false
    end
    add_index :users, :username, unique: true
    add_index :users, :password_digest, unique: true
  end
end
