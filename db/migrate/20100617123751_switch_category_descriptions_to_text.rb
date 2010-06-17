class SwitchCategoryDescriptionsToText < ActiveRecord::Migration
  def self.up
    change_column :categories, :description_sl, :text, :limit => nil
    change_column :categories, :description_en, :text, :limit => nil
    change_column :categories, :description_hr, :text, :limit => nil
    change_column :categories, :description_sr, :text, :limit => nil
    change_column :categories, :description_sl_html, :text, :limit => nil
    change_column :categories, :description_en_html, :text, :limit => nil
    change_column :categories, :description_hr_html, :text, :limit => nil
    change_column :categories, :description_sr_html, :text, :limit => nil
  end

  def self.down
  end
end