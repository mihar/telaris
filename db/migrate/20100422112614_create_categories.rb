class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :name_sl
      t.string :name_en
      t.string :name_hr
      t.string :name_sr
      t.string :abstract_sl
      t.string :abstract_en
      t.string :abstract_hr
      t.string :abstract_sr
      t.string :description_sl
      t.string :description_en
      t.string :description_hr
      t.string :description_sr
      t.string :description_sl_html
      t.string :description_en_html
      t.string :description_hr_html
      t.string :description_sr_html
      t.integer :parent_id

      t.timestamps
    end
  end

  def self.down
    drop_table :categories
  end
end
