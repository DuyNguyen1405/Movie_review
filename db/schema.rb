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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161126140925) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.string   "name"
    t.datetime "date_of_birth"
    t.string   "avatar"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "review_id"
  end

  add_index "comments", ["review_id"], name: "index_comments_on_review_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "favorite_actors", force: :cascade do |t|
    t.integer "user_id"
    t.integer "actor_id"
  end

  add_index "favorite_actors", ["actor_id"], name: "index_favorite_actors_on_actor_id", using: :btree
  add_index "favorite_actors", ["user_id"], name: "index_favorite_actors_on_user_id", using: :btree

  create_table "favorite_movies", force: :cascade do |t|
    t.integer "user_id"
    t.integer "movie_id"
  end

  add_index "favorite_movies", ["movie_id"], name: "index_favorite_movies_on_movie_id", using: :btree
  add_index "favorite_movies", ["user_id"], name: "index_favorite_movies_on_user_id", using: :btree

  create_table "genres", force: :cascade do |t|
    t.string "name"
  end

  create_table "images", force: :cascade do |t|
    t.string  "link"
    t.integer "movie_id"
  end

  add_index "images", ["movie_id"], name: "index_images_on_movie_id", using: :btree

  create_table "movie_actors", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "actor_id"
  end

  add_index "movie_actors", ["actor_id"], name: "index_movie_actors_on_actor_id", using: :btree
  add_index "movie_actors", ["movie_id"], name: "index_movie_actors_on_movie_id", using: :btree

  create_table "movie_categories", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "category_id"
  end

  add_index "movie_categories", ["category_id"], name: "index_movie_categories_on_category_id", using: :btree
  add_index "movie_categories", ["movie_id"], name: "index_movie_categories_on_movie_id", using: :btree

  create_table "movie_genres", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "genre_id"
  end

  add_index "movie_genres", ["genre_id"], name: "index_movie_genres_on_genre_id", using: :btree
  add_index "movie_genres", ["movie_id"], name: "index_movie_genres_on_movie_id", using: :btree

  create_table "movie_producers", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "producer_id"
  end

  add_index "movie_producers", ["movie_id"], name: "index_movie_producers_on_movie_id", using: :btree
  add_index "movie_producers", ["producer_id"], name: "index_movie_producers_on_producer_id", using: :btree

  create_table "movies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "score"
    t.integer  "episodes"
    t.string   "status"
    t.string   "rating"
    t.text     "summary"
  end

  create_table "musics", force: :cascade do |t|
    t.string  "link"
    t.integer "movie_id"
  end

  add_index "musics", ["movie_id"], name: "index_musics_on_movie_id", using: :btree

  create_table "producers", force: :cascade do |t|
    t.string   "name"
    t.datetime "date_of_birth"
    t.string   "avatar"
  end

  create_table "rates", force: :cascade do |t|
    t.integer "score"
    t.integer "user_id"
    t.integer "movie_id"
  end

  add_index "rates", ["movie_id"], name: "index_rates_on_movie_id", using: :btree
  add_index "rates", ["user_id"], name: "index_rates_on_user_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.text     "content"
    t.integer  "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "movie_id"
  end

  add_index "reviews", ["movie_id"], name: "index_reviews_on_movie_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.date     "date_of_birth"
    t.string   "address"
    t.string   "workplace"
    t.string   "introduce"
    t.string   "role"
    t.string   "sex"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "videos", force: :cascade do |t|
    t.string  "link"
    t.integer "movie_id"
  end

  add_index "videos", ["movie_id"], name: "index_videos_on_movie_id", using: :btree

  add_foreign_key "comments", "reviews"
  add_foreign_key "comments", "users"
  add_foreign_key "images", "movies"
  add_foreign_key "musics", "movies"
  add_foreign_key "rates", "movies"
  add_foreign_key "rates", "users"
  add_foreign_key "reviews", "movies"
  add_foreign_key "reviews", "users"
  add_foreign_key "videos", "movies"
end
