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

ActiveRecord::Schema.define(version: 20151020042933) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
  end

  create_table "moods", force: :cascade do |t|
  end

  create_table "posts", force: :cascade do |t|
  end

  create_table "supports", force: :cascade do |t|
  end

  create_table "users", force: :cascade do |t|
  end

  create_table "wp_commentmeta", primary_key: "meta_id", force: :cascade do |t|
    t.integer "comment_id", limit: 8,   default: 0, null: false
    t.string  "meta_key",   limit: 255
    t.text    "meta_value"
  end

  add_index "wp_commentmeta", ["comment_id"], name: "wp_commentmeta_comment_id", using: :btree
  add_index "wp_commentmeta", ["meta_key"], name: "wp_commentmeta_meta_key", using: :btree

  create_table "wp_comments", primary_key: "comment_ID", force: :cascade do |t|
    t.integer  "comment_post_ID",      limit: 8,   default: 0,                              null: false
    t.text     "comment_author",                                                            null: false
    t.string   "comment_author_email", limit: 100, default: "",                             null: false
    t.string   "comment_author_url",   limit: 200, default: "",                             null: false
    t.string   "comment_author_ip",    limit: 100, default: "",                             null: false
    t.datetime "comment_date",                     default: "now()",                        null: false
    t.datetime "comment_date_gmt",                 default: "timezone('gmt'::text, now())", null: false
    t.text     "comment_content",                                                           null: false
    t.integer  "comment_karma",                    default: 0,                              null: false
    t.string   "comment_approved",     limit: 20,  default: "1",                            null: false
    t.string   "comment_agent",        limit: 255, default: "",                             null: false
    t.string   "comment_type",         limit: 20,  default: "",                             null: false
    t.integer  "comment_parent",       limit: 8,   default: 0,                              null: false
    t.integer  "user_id",              limit: 8,   default: 0,                              null: false
  end

  add_index "wp_comments", ["comment_approved", "comment_date_gmt"], name: "wp_comments_comment_approved_date_gmt", using: :btree
  add_index "wp_comments", ["comment_author_email"], name: "wp_comments_comment_author_email", using: :btree
  add_index "wp_comments", ["comment_date_gmt"], name: "wp_comments_comment_date_gmt", using: :btree
  add_index "wp_comments", ["comment_parent"], name: "wp_comments_comment_parent", using: :btree
  add_index "wp_comments", ["comment_post_ID"], name: "wp_comments_comment_post_ID", using: :btree

  create_table "wp_links", primary_key: "link_id", force: :cascade do |t|
    t.string   "link_url",         limit: 255, default: "",      null: false
    t.string   "link_name",        limit: 255, default: "",      null: false
    t.string   "link_image",       limit: 255, default: "",      null: false
    t.string   "link_target",      limit: 25,  default: "",      null: false
    t.string   "link_description", limit: 255, default: "",      null: false
    t.string   "link_visible",     limit: 20,  default: "Y",     null: false
    t.integer  "link_owner",       limit: 8,   default: 1,       null: false
    t.integer  "link_rating",                  default: 0,       null: false
    t.datetime "link_updated",                 default: "now()", null: false
    t.string   "link_rel",         limit: 255, default: "",      null: false
    t.text     "link_notes",                                     null: false
    t.string   "link_rss",         limit: 255, default: "",      null: false
  end

  add_index "wp_links", ["link_visible"], name: "wp_links_link_visible", using: :btree

  create_table "wp_options", primary_key: "option_id", force: :cascade do |t|
    t.string "option_name",  limit: 64, default: "",    null: false
    t.text   "option_value",                            null: false
    t.string "autoload",     limit: 20, default: "yes", null: false
  end

  add_index "wp_options", ["option_name"], name: "wp_options_option_name", unique: true, using: :btree

  create_table "wp_postmeta", primary_key: "meta_id", force: :cascade do |t|
    t.integer "post_id",    limit: 8,   default: 0, null: false
    t.string  "meta_key",   limit: 255
    t.text    "meta_value"
  end

  add_index "wp_postmeta", ["meta_key"], name: "wp_postmeta_meta_key", using: :btree
  add_index "wp_postmeta", ["post_id"], name: "wp_postmeta_post_id", using: :btree

  create_table "wp_posts", primary_key: "ID", force: :cascade do |t|
    t.integer  "post_author",           limit: 8,   default: 0,                              null: false
    t.datetime "post_date",                         default: "now()",                        null: false
    t.datetime "post_date_gmt",                     default: "timezone('gmt'::text, now())", null: false
    t.text     "post_content",                                                               null: false
    t.text     "post_title",                                                                 null: false
    t.text     "post_excerpt",                                                               null: false
    t.string   "post_status",           limit: 20,  default: "publish",                      null: false
    t.string   "comment_status",        limit: 20,  default: "open",                         null: false
    t.string   "ping_status",           limit: 20,  default: "open",                         null: false
    t.string   "post_password",         limit: 20,  default: "",                             null: false
    t.string   "post_name",             limit: 200, default: "",                             null: false
    t.text     "to_ping",                                                                    null: false
    t.text     "pinged",                                                                     null: false
    t.datetime "post_modified",                     default: "now()",                        null: false
    t.datetime "post_modified_gmt",                 default: "timezone('gmt'::text, now())", null: false
    t.text     "post_content_filtered",                                                      null: false
    t.integer  "post_parent",           limit: 8,   default: 0,                              null: false
    t.string   "guid",                  limit: 255, default: "",                             null: false
    t.integer  "menu_order",                        default: 0,                              null: false
    t.string   "post_type",             limit: 20,  default: "post",                         null: false
    t.string   "post_mime_type",        limit: 100, default: "",                             null: false
    t.integer  "comment_count",         limit: 8,   default: 0,                              null: false
  end

  add_index "wp_posts", ["post_author"], name: "wp_posts_post_author", using: :btree
  add_index "wp_posts", ["post_name"], name: "wp_posts_post_name", using: :btree
  add_index "wp_posts", ["post_parent"], name: "wp_posts_post_parent", using: :btree
  add_index "wp_posts", ["post_type", "post_status", "post_date", "ID"], name: "wp_posts_type_status_date", using: :btree

  create_table "wp_term_relationships", id: false, force: :cascade do |t|
    t.integer "object_id",        limit: 8, default: 0, null: false
    t.integer "term_taxonomy_id", limit: 8, default: 0, null: false
    t.integer "term_order",                 default: 0, null: false
  end

  add_index "wp_term_relationships", ["term_taxonomy_id"], name: "wp_term_relationships_term_taxonomy_id", using: :btree

  create_table "wp_term_taxonomy", primary_key: "term_taxonomy_id", force: :cascade do |t|
    t.integer "term_id",     limit: 8,  default: 0,  null: false
    t.string  "taxonomy",    limit: 32, default: "", null: false
    t.text    "description",                         null: false
    t.integer "parent",      limit: 8,  default: 0,  null: false
    t.integer "count",       limit: 8,  default: 0,  null: false
  end

  add_index "wp_term_taxonomy", ["taxonomy"], name: "wp_term_taxonomy_taxonomy", using: :btree
  add_index "wp_term_taxonomy", ["term_id", "taxonomy"], name: "wp_term_taxonomy_term_id_taxonomy", unique: true, using: :btree

  create_table "wp_terms", primary_key: "term_id", force: :cascade do |t|
    t.string  "name",       limit: 200, default: "", null: false
    t.string  "slug",       limit: 200, default: "", null: false
    t.integer "term_group",             default: 0,  null: false
  end

  add_index "wp_terms", ["name"], name: "wp_terms_name", using: :btree
  add_index "wp_terms", ["slug"], name: "wp_terms_slug", using: :btree

  create_table "wp_usermeta", primary_key: "umeta_id", force: :cascade do |t|
    t.integer "user_id",    limit: 8,   default: 0, null: false
    t.string  "meta_key",   limit: 255
    t.text    "meta_value"
  end

  add_index "wp_usermeta", ["meta_key"], name: "wp_usermeta_meta_key", using: :btree
  add_index "wp_usermeta", ["user_id"], name: "wp_usermeta_user_id", using: :btree

  create_table "wp_users", primary_key: "ID", force: :cascade do |t|
    t.string   "user_login",          limit: 60,  default: "",      null: false
    t.string   "user_pass",           limit: 64,  default: "",      null: false
    t.string   "user_nicename",       limit: 50,  default: "",      null: false
    t.string   "user_email",          limit: 100, default: "",      null: false
    t.string   "user_url",            limit: 100, default: "",      null: false
    t.datetime "user_registered",                 default: "now()", null: false
    t.string   "user_activation_key", limit: 60,  default: "",      null: false
    t.integer  "user_status",                     default: 0,       null: false
    t.string   "display_name",        limit: 250, default: "",      null: false
  end

  add_index "wp_users", ["user_login"], name: "wp_users_user_login_key", using: :btree
  add_index "wp_users", ["user_nicename"], name: "wp_users_user_nicename", using: :btree

end
