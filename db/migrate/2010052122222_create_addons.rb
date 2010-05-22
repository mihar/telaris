class CreateAddons < ActiveRecord::Migration
  def self.up
    create_table :addons do |t|
      t.string :name
      t.text :body_sl
      t.text :body_sl_html
      t.text :body_en
      t.text :body_en_html
      t.text :body_hr
      t.text :body_hr_html
      t.text :body_sr
      t.text :body_sr_html
      t.string :url
      t.integer :addon_category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :addons
  end
end
