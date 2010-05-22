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

ActiveRecord::Schema.define(:version => 20100521143322) do

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

  create_table "addon_categories", :force => true do |t|
    t.string   "name_sl"
    t.string   "name_en"
    t.string   "name_hr"
    t.string   "name_sr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addons", :force => true do |t|
    t.string   "name"
    t.text     "body_sl"
    t.text     "body_sl_html"
    t.text     "body_en"
    t.text     "body_en_html"
    t.text     "body_hr"
    t.text     "body_hr_html"
    t.text     "body_sr"
    t.text     "body_sr_html"
    t.string   "url"
    t.integer  "addon_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "addons_products", :id => false, :force => true do |t|
    t.integer "addon_id"
    t.integer "product_id"
  end

  create_table "categories", :force => true do |t|
    t.string   "name_sl"
    t.string   "name_en"
    t.string   "name_hr"
    t.string   "name_sr"
    t.string   "abstract_sl"
    t.string   "abstract_en"
    t.string   "abstract_hr"
    t.string   "abstract_sr"
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

  create_table "equipment", :force => true do |t|
    t.string   "name"
    t.text     "body_sl"
    t.text     "body_sl_html"
    t.text     "body_en"
    t.text     "body_en_html"
    t.text     "body_hr"
    t.text     "body_hr_html"
    t.text     "body_sr"
    t.text     "body_sr_html"
    t.string   "url"
    t.integer  "equipment_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipment_categories", :force => true do |t|
    t.string   "name_sl"
    t.string   "name_en"
    t.string   "name_hr"
    t.string   "name_sr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipment_products", :id => false, :force => true do |t|
    t.integer "equipment_id"
    t.integer "product_id"
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
    t.string   "photographable_type"
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
    t.text     "summary_sl"
    t.text     "summary_en"
    t.text     "summary_hr"
    t.text     "summary_sr"
    t.text     "summary_sl_html"
    t.text     "summary_en_html"
    t.text     "summary_hr_html"
    t.text     "summary_sr_html"
    t.text     "pitch_sl"
    t.text     "pitch_en"
    t.text     "pitch_hr"
    t.text     "pitch_sr"
    t.text     "type_table_sl"
    t.text     "type_table_en"
    t.text     "type_table_hr"
    t.text     "type_table_sr"
    t.text     "safety_table_sl"
    t.text     "safety_table_en"
    t.text     "safety_table_hr"
    t.text     "safety_table_sr"
    t.text     "basic_table_sl"
    t.text     "basic_table_en"
    t.text     "basic_table_hr"
    t.text     "basic_table_sr"
    t.text     "system_sl"
    t.text     "system_en"
    t.text     "system_hr"
    t.text     "system_sr"
    t.text     "system_sl_html"
    t.text     "system_en_html"
    t.text     "system_hr_html"
    t.text     "system_sr_html"
    t.string   "system_photo_file_name"
    t.string   "system_photo_content_type"
    t.integer  "system_photo_file_size"
    t.datetime "system_photo_updated_at"
    t.string   "technical_photo_file_name"
    t.string   "technical_photo_content_type"
    t.integer  "technical_photo_file_size"
    t.datetime "technical_photo_updated_at"
    t.text     "technical_sl"
    t.text     "technical_en"
    t.text     "technical_hr"
    t.text     "technical_sr"
    t.text     "technical_sl_html"
    t.text     "technical_en_html"
    t.text     "technical_hr_html"
    t.text     "technical_sr_html"
  end

end
