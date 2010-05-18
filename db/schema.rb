# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090417182906) do

  create_table "accomplishments", :force => true do |t|
    t.integer  "user_id",     :null => false
    t.integer  "post_number", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accomplishments", ["post_number"], :name => "index_accomplishments_on_post_number"
  add_index "accomplishments", ["user_id", "post_number"], :name => "index_accomplishments_on_user_id_and_post_number", :unique => true

  create_table "users", :force => true do |t|
    t.integer  "fb_uid",                               :null => false
    t.integer  "accomplishments_count", :default => 0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["fb_uid"], :name => "index_users_on_fb_uid", :unique => true

end
