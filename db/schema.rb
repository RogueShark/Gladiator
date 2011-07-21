# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110720025300) do

  create_table "humans", :force => true do |t|
    t.string   "name"
    t.string   "warriorType",  :default => "Slave"
    t.integer  "health",       :default => 30
    t.integer  "magicka",      :default => 30
    t.integer  "fatigue",      :default => 30
    t.integer  "defense",      :default => 30
    t.integer  "strength",     :default => 3
    t.integer  "endurance",    :default => 3
    t.integer  "wisdom",       :default => 3
    t.integer  "intelligence", :default => 3
    t.integer  "speed",        :default => 3
    t.integer  "agility",      :default => 3
    t.boolean  "hasWeapon",    :default => false
    t.boolean  "hasShield",    :default => false
    t.integer  "powerID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
