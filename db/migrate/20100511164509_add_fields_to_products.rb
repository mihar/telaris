class AddFieldsToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :summary_sl, :text
    add_column :products, :summary_en, :text
    add_column :products, :summary_hr, :text
    add_column :products, :summary_sr, :text
    add_column :products, :summary_sl_html, :text
    add_column :products, :summary_en_html, :text
    add_column :products, :summary_hr_html, :text
    add_column :products, :summary_sr_html, :text
    add_column :products, :pitch_sl, :text
    add_column :products, :pitch_en, :text
    add_column :products, :pitch_hr, :text
    add_column :products, :pitch_sr, :text
    add_column :products, :type_table_sl, :text
    add_column :products, :type_table_en, :text
    add_column :products, :type_table_hr, :text
    add_column :products, :type_table_sr, :text
    add_column :products, :safety_table_sl, :text
    add_column :products, :safety_table_en, :text
    add_column :products, :safety_table_hr, :text
    add_column :products, :safety_table_sr, :text
    add_column :products, :basic_table_sl, :text
    add_column :products, :basic_table_en, :text
    add_column :products, :basic_table_hr, :text
    add_column :products, :basic_table_sr, :text
    add_column :products, :system_sl, :text
    add_column :products, :system_en, :text
    add_column :products, :system_hr, :text
    add_column :products, :system_sr, :text
  end

  def self.down
    remove_column :products, :summary_sl
  end
end
