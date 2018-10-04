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

ActiveRecord::Schema.define(version: 2018_10_04_164538) do

  create_table "assignments", force: :cascade do |t|
    t.string "assignment_name"
    t.integer "assignment_grade"
    t.integer "student_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_assignments_on_course_id"
    t.index ["student_id"], name: "index_assignments_on_student_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "course_name"
    t.integer "teacher_id"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_courses_on_student_id"
    t.index ["teacher_id"], name: "index_courses_on_teacher_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "student_username"
    t.string "student_firstname"
    t.string "student_lastname"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "teacher_username"
    t.string "teacher_prefix"
    t.string "teacher_firstname"
    t.string "teacher_lastname"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
