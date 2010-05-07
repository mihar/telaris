# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100422113628) do

  create_table "abouts", :force => true do |t|
    t.text     "about_sl"
    t.text     "about_en"
    t.text     "about_hr"
    t.text     "about_sr"
    t.text     "about_sl_html"
    t.text     "about_en_html"
    t.text     "about_hr_html"
    t.text     "about_sr_html"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name_sl"
    t.string   "name_en"
    t.string   "name_hr"
    t.string   "name_sr"
    t.string   "description_sl"
    t.string   "description_en"
    t.string   "description_hr"
    t.string   "description_sr"
    t.string   "description_sl_html"
    t.string   "description_en_html"
    t.string   "description_hr_html"
    t.string   "description_sr_html"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inquiries", :force => true do |t|
    t.string   "contact_name"
    t.string   "industry"
    t.string   "phone"
    t.string   "email"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partners", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "photos", :force => true do |t|
    t.integer  "photographable_id"
    t.integer  "photographable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "title_sl"
    t.string   "title_en"
    t.string   "title_hr"
    t.string   "title_sr"
    t.text     "body_sl"
    t.text     "body_en"
    t.text     "body_hr"
    t.text     "body_sr"
    t.text     "body_sl_html"
    t.text     "body_en_html"
    t.text     "body_hr_html"
    t.text     "body_sr_html"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name_sl"
    t.string   "name_en"
    t.string   "name_hr"
    t.string   "name_sr"
    t.integer  "category_id"
    t.text     "body_sl"
    t.text     "body_en"
    t.text     "body_hr"
    t.text     "body_sr"
    t.text     "body_sl_html"
    t.text     "body_en_html"
    t.text     "body_hr_html"
    t.text     "body_sr_html"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
