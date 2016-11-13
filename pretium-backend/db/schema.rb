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

ActiveRecord::Schema.define(version: 20161112223808) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colleges", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employers", force: :cascade do |t|
    t.integer  "employer_id"
    t.string   "name"
    t.string   "location"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "skill_id"
    t.integer  "teacher_id"
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "review"
  end

  create_table "request_ratings", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "skill_id"
    t.integer  "teacher_id"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "saved_searches", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "query_string"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "skills_sub_category_id"
  end

  create_table "skills_categories", force: :cascade do |t|
    t.string "category_name"
  end

  create_table "skills_sub_categories", force: :cascade do |t|
    t.string  "sub_category_name"
    t.integer "skills_category_id"
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.integer  "passout"
    t.string   "course"
    t.integer  "college_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "dob"
    t.string   "gender"
    t.string   "nationality"
    t.string   "address"
    t.string   "father_name"
    t.string   "mother_name"
    t.string   "spouse_name"
    t.string   "primary_school"
    t.string   "secondary_school"
    t.string   "senior_secondary_school"
    t.string   "higher_secondary_school"
    t.string   "graduation"
    t.string   "post_graduation"
    t.string   "co_curricular"
    t.string   "extra_curricular"
    t.string   "archivements"
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "specialisation"
    t.integer  "college_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "designation"
    t.string   "dob"
    t.string   "gender"
    t.string   "nationality"
    t.string   "marital_status"
    t.string   "spouse_name"
    t.string   "address"
    t.string   "contact_number"
    t.string   "secondary_school"
    t.string   "senior_secondary_school"
    t.string   "graduation"
    t.string   "post_graduation"
    t.string   "higher_secondary_school"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "role"
    t.string   "token"
  end

end
