# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_03_20_175937) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "nba_player_rosters", force: :cascade do |t|
    t.bigint "nba_roster_id", null: false
    t.bigint "nba_player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nba_player_id"], name: "index_nba_player_rosters_on_nba_player_id"
    t.index ["nba_roster_id"], name: "index_nba_player_rosters_on_nba_roster_id"
  end

  create_table "nba_players", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nba_rosters", force: :cascade do |t|
    t.string "name"
    t.integer "salary_cap"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name", null: false
    t.float "experience"
    t.bigint "nba_player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nba_player_id"], name: "index_skills_on_nba_player_id"
  end

  add_foreign_key "nba_player_rosters", "nba_players"
  add_foreign_key "nba_player_rosters", "nba_rosters"
  add_foreign_key "skills", "nba_players"
end
