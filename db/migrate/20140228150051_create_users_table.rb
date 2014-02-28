class CreateUsersTable < ActiveRecord::Migration
  def up
  	create_table :users do |u|
  		u.string :u_id, :unique=>true
  		u.string :u_name
  		u.string :u_user_name
  		u.string :u_gender
  		u.string :u_hometown
  		u.text :u_bio
  		u.text :u_location
  		u.timestamps
  	end
  	add_index :users, :u_id, :unique=>true
  end

  def down
  	drop_table :users
  end
end
