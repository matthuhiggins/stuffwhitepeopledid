class CreateAccomplishments < ActiveRecord::Migration
  def self.up
    create_table :accomplishments, :id => false do |t|
      t.integer :user_id, :post_number, :null => false
      t.timestamps
    end
    add_index :accomplishments, [:user_id, :post_number], :unique => true
  end

  def self.down
    drop_table :accomplishments
  end
end
