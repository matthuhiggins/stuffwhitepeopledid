class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.integer   :fb_uid,                    :null => false, :limit => 8
      t.integer   :latest_accomplishment_id
      t.datetime  :created_at,  :null => false
    end
    add_index :users, :fb_uid, :unique => true
    add_index :users, :latest_accomplishment_id
  end

  def self.down
    drop_table :users
  end
end
