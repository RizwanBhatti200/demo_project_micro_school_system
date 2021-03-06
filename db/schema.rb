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

ActiveRecord::Schema.define(version: 2020_11_19_082944) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: :cascade do |t|
    t.string "imageable_type"
    t.bigint "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.bigint "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["imageable_id", "imageable_type"], name: "index_images_on_imageable_id_and_imageable_type"
    t.index ["imageable_type", "imageable_id"], name: "index_images_on_imageable_type_and_imageable_id"
  end

  create_table "join_requests", force: :cascade do |t|
    t.boolean "approval", default: false
    t.integer "pod_id"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pod_id", "student_id"], name: "index_join_requests_on_pod_id_and_student_id", unique: true
  end

  create_table "parents", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.boolean "active", default: true
    t.boolean "admin", default: false
    t.index ["confirmation_token"], name: "index_parents_on_confirmation_token", unique: true
    t.index ["email"], name: "index_parents_on_email", unique: true
    t.index ["reset_password_token"], name: "index_parents_on_reset_password_token", unique: true
  end

  create_table "pods", force: :cascade do |t|
    t.bigint "parent_id"
    t.bigint "teacher_id"
    t.string "zipcode"
    t.string "pod_name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active", default: false
    t.index ["parent_id"], name: "index_pods_on_parent_id"
    t.index ["teacher_id"], name: "index_pods_on_teacher_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.bigint "parent_id"
    t.string "reviewable_type"
    t.bigint "reviewable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_reviews_on_parent_id"
    t.index ["reviewable_id", "reviewable_type"], name: "index_reviews_on_reviewable_id_and_reviewable_type"
    t.index ["reviewable_type", "reviewable_id"], name: "index_reviews_on_reviewable_type_and_reviewable_id"
  end

  create_table "students", force: :cascade do |t|
    t.bigint "parent_id"
    t.bigint "pod_id"
    t.string "first_name"
    t.string "last_name"
    t.string "grade"
    t.integer "age"
    t.integer "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active", default: true
    t.index ["parent_id"], name: "index_students_on_parent_id"
    t.index ["pod_id"], name: "index_students_on_pod_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "gender"
    t.string "grade", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active", default: false
  end

end
