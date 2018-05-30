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

ActiveRecord::Schema.define(version: 20180530134124) do

  create_table "athletes", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "dob"
  end

  create_table "measurement_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movement_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movements", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "movement_types_id"
    t.index ["movement_types_id"], name: "index_movements_on_movement_types_id"
  end

  create_table "score_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workout_movements", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "movements_id"
    t.integer  "measurement_types_id"
    t.integer  "measurement_amount"
    t.integer  "workout_id"
    t.integer  "weight"
    t.index ["measurement_types_id"], name: "index_workout_movements_on_measurement_types_id"
    t.index ["movements_id"], name: "index_workout_movements_on_movements_id"
    t.index ["workout_id"], name: "index_workout_movements_on_workout_id"
  end

  create_table "workout_results", force: :cascade do |t|
    t.integer  "workout_id"
    t.integer  "value"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.datetime "result_date"
    t.integer  "athletes_id"
    t.index ["athletes_id"], name: "index_workout_results_on_athletes_id"
    t.index ["workout_id"], name: "index_workout_results_on_workout_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.time     "time_cap"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "score_types_id"
    t.index ["score_types_id"], name: "index_workouts_on_score_types_id"
  end

end
