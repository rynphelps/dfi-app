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

ActiveRecord::Schema.define(version: 20180429165031) do

  create_table "actor_auditions", force: :cascade do |t|
    t.integer  "actor_id"
    t.integer  "audition_link_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "actor_forms", force: :cascade do |t|
    t.integer  "other_forms_link_id"
    t.integer  "actor_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "actor_heights", force: :cascade do |t|
    t.string   "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actor_languages", force: :cascade do |t|
    t.integer  "actor_id"
    t.integer  "language_dialect_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "actor_pictures", force: :cascade do |t|
    t.integer  "picture_link_id"
    t.integer  "actor_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "actor_skills", force: :cascade do |t|
    t.integer  "special_skill_id"
    t.integer  "actor_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "actor_weights", force: :cascade do |t|
    t.string   "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actors", force: :cascade do |t|
    t.date     "date_of_birth"
    t.string   "gender"
    t.string   "headshot_link"
    t.string   "instagram"
    t.string   "release_form_link"
    t.string   "medical_form_link"
    t.text     "availability"
    t.string   "phone_number"
    t.integer  "actor_weight_id"
    t.integer  "actor_height_id"
    t.integer  "nationality_id"
    t.integer  "eye_color_id"
    t.integer  "hair_color_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
  end

  create_table "audition_links", force: :cascade do |t|
    t.string   "audition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "casting_directors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "eye_colors", force: :cascade do |t|
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "film_casters", force: :cascade do |t|
    t.integer  "casting_director_id"
    t.integer  "film_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "films", force: :cascade do |t|
    t.string   "name"
    t.string   "year"
    t.string   "director"
    t.string   "video_link"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.boolean  "in_production"
  end

  create_table "hair_colors", force: :cascade do |t|
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "language_dialects", force: :cascade do |t|
    t.string   "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nationalities", force: :cascade do |t|
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "other_forms_links", force: :cascade do |t|
    t.string   "form_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "picture_links", force: :cascade do |t|
    t.string   "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.integer  "film_id"
    t.integer  "actor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "special_skills", force: :cascade do |t|
    t.string   "skill"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
