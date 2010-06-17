class SwitchCategoryDescriptionsToText < ActiveRecord::Migration
  def self.up
    change_column :categories, :description_sl, :text
    change_column :categories, :description_en, :text
    change_column :categories, :description_hr, :text
    change_column :categories, :description_sr, :text
    change_column :categories, :description_sl_html, :text
    change_column :categories, :description_en_html, :text
    change_column :categories, :description_hr_html, :text
    change_column :categories, :description_sr_html, :text
  end

  def self.down
  end
end