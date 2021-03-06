# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 8) do

  create_table "entries", :force => true do |t|
    t.integer  "tournament_id"
    t.integer  "player_id"
    t.integer  "paid"
    t.integer  "result"
    t.integer  "payout"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leagues", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", :force => true do |t|
    t.string   "first"
    t.string   "last"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_url"
    t.text     "description"
  end

  create_table "tournaments", :force => true do |t|
    t.string   "league_id"
    t.datetime "start"
    t.text     "description"
    t.integer  "buyin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tstats", :force => true do |t|
    t.integer  "hero_chips"
    t.integer  "small_blind"
    t.integer  "big_blind"
    t.integer  "ante"
    t.integer  "current_table_size"
    t.integer  "number_of_players_left"
    t.integer  "number_of_players_at_start"
    t.integer  "added_chips"
    t.integer  "starting_chips"
    t.integer  "maximum_table_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
  end

end
