class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name_sl
      t.string :name_en
      t.string :name_hr
      t.string :name_sr
      t.integer :category_id
      t.text :body_sl
      t.text :body_en
      t.text :body_hr
      t.text :body_sr
      t.text :body_sl_html
      t.text :body_en_html
      t.text :body_hr_html
      t.text :body_sr_html

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
