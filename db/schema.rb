# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20121010150113) do

  create_table "assignments", :force => true do |t|
    t.string   "Assignment_Name"
    t.datetime "Start_Date"
    t.datetime "Due_Date"
    t.integer  "Point"
    t.text     "Description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", :force => true do |t|
    t.integer  "Course_Year"
    t.string   "Semester"
    t.string   "Course_Name"
    t.string   "Section"
    t.string   "Course_Time"
    t.string   "Class_Room"
    t.integer  "Credit"
    t.text     "Course_Description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instructors", :force => true do |t|
    t.string   "First_Name"
    t.string   "Middle_Name"
    t.string   "Last_Name"
    t.string   "Email"
    t.string   "Phone"
    t.string   "Address"
    t.string   "Password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", :force => true do |t|
    t.text     "Question"
    t.integer  "Question_Type"
    t.text     "Hint"
    t.integer  "Hint_Point"
    t.text     "Answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.string   "First_Name"
    t.string   "Middle_Name"
    t.string   "Last_Name"
    t.string   "Gender"
    t.string   "Email"
    t.integer  "Admission_Year"
    t.text     "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
