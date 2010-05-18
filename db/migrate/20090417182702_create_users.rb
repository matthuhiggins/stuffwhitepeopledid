class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.integer :fb_uid,                    :null => false
      t.integer :accomplishments_count,     :null => false, :default => 0
      t.integer :latest_accomplishment_id
      t.timestamps
    end
    add_index :users, :fb_uid, :unique => true
    add_index :users, :latest_accomplishment_id
  end

  def self.down
    drop_table :users
  end
end
