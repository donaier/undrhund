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

ActiveRecord::Schema.define(version: 20140311210923) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
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
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "clan_members", force: true do |t|
    t.string   "username",               default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "steam_link"
    t.string   "frequency"
    t.string   "current_rank"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "languages"
    t.string   "steam_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "clan_members", ["reset_password_token"], name: "index_clan_members_on_reset_password_token", unique: true, using: :btree
  add_index "clan_members", ["username"], name: "index_clan_members_on_username", unique: true, using: :btree

  create_table "kuhsaft_assets", force: true do |t|
    t.string   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kuhsaft_brick_types", force: true do |t|
    t.string   "class_name"
    t.string   "group"
    t.boolean  "enabled",    default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kuhsaft_bricks", force: true do |t|
    t.integer  "position"
    t.integer  "brick_list_id"
    t.string   "brick_list_type"
    t.string   "type"
    t.string   "locale"
    t.text     "text"
    t.text     "read_more_text"
    t.string   "caption"
    t.text     "href"
    t.string   "link_style"
    t.integer  "partitioning"
    t.string   "image"
    t.string   "image_size"
    t.text     "embed_src"
    t.string   "video"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "template_name"
    t.text     "display_styles"
    t.string   "asset"
    t.boolean  "open_in_new_window"
  end

  create_table "kuhsaft_pages", force: true do |t|
    t.integer  "position"
    t.string   "title_en"
    t.string   "title_de"
    t.string   "slug_en"
    t.string   "slug_de"
    t.string   "keywords_en"
    t.string   "keywords_de"
    t.text     "description_en"
    t.text     "description_de"
    t.text     "body_en"
    t.text     "body_de"
    t.integer  "published"
    t.integer  "page_id"
    t.text     "url_en"
    t.text     "url_de"
    t.string   "page_type"
    t.text     "fulltext_en"
    t.text     "fulltext_de"
    t.string   "ancestry"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "redirect_url_de"
    t.text     "page_title_de"
  end

  add_index "kuhsaft_pages", ["ancestry"], name: "index_kuhsaft_pages_on_ancestry", using: :btree
  add_index "kuhsaft_pages", ["published"], name: "index_kuhsaft_pages_on_published", using: :btree

  create_table "posts", force: true do |t|
    t.integer  "topic_id"
    t.integer  "clan_member_id"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skins", force: true do |t|
    t.string   "name"
    t.string   "collection"
    t.string   "quality"
    t.boolean  "stattrak"
    t.boolean  "souvenir"
    t.boolean  "boxed"
    t.string   "image"
    t.integer  "weapon_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "topics", force: true do |t|
    t.string   "category"
    t.integer  "clan_member_id"
    t.string   "visibility"
    t.string   "title"
    t.text     "text"
    t.boolean  "sticky"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weapons", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.boolean  "available_ct"
    t.boolean  "available_t"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
