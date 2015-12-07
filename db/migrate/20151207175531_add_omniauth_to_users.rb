class AddOmniauthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provide, :string
    add_index :users, :provide
    add_column :users, :uid, :string
    add_index :users, :uid
  end
end
