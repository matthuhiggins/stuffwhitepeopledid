class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.integer :fb_uid, :null => false
      t.integer :accomplishments_count, :null => false, :default => 0 
      t.timestamps
    end
    add_index :users, :fb_uid, :unique => true
  end

  def self.down
    drop_table :users
  end
end
