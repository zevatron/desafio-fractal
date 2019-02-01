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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190130211913) do

  create_table "accounts", force: :cascade do |t|
    t.integer "athlete_id"
    t.integer "group_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["athlete_id"], name: "index_accounts_on_athlete_id"
    t.index ["group_id"], name: "index_accounts_on_group_id"
  end

  create_table "athletes", force: :cascade do |t|
    t.float "score"
    t.integer "status"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_athletes_on_person_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "descricao"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "local"
    t.integer "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_events_on_group_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.integer "sport_id"
    t.integer "fundador_id"
    t.text "estatuto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fundador_id"], name: "index_groups_on_fundador_id"
    t.index ["sport_id"], name: "index_groups_on_sport_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "nome"
    t.string "telefone"
    t.datetime "dataNascimento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sports", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.text "regra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
