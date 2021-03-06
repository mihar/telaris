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
    add_column :products, :system_sl_html, :text
    add_column :products, :system_en_html, :text
    add_column :products, :system_hr_html, :text
    add_column :products, :system_sr_html, :text
  end

  def self.down
    remove_column :products, :summary_sl
    remove_column :products, :summary_en
    remove_column :products, :summary_hr
    remove_column :products, :summary_sr
    remove_column :products, :summary_sl_html
    remove_column :products, :summary_en_html
    remove_column :products, :summary_hr_html
    remove_column :products, :summary_sr_html
    remove_column :products, :pitch_sl
    remove_column :products, :pitch_en
    remove_column :products, :pitch_hr
    remove_column :products, :pitch_sr
    remove_column :products, :type_table_sl
    remove_column :products, :type_table_en
    remove_column :products, :type_table_hr
    remove_column :products, :type_table_sr
    remove_column :products, :safety_table_sl
    remove_column :products, :safety_table_en
    remove_column :products, :safety_table_hr
    remove_column :products, :safety_table_sr
    remove_column :products, :basic_table_sl
    remove_column :products, :basic_table_en
    remove_column :products, :basic_table_hr
    remove_column :products, :basic_table_sr
    remove_column :products, :system_sl
    remove_column :products, :system_en
    remove_column :products, :system_hr
    remove_column :products, :system_sr
    remove_column :products, :system_sl_html
    remove_column :products, :system_en_html
    remove_column :products, :system_hr_html
    remove_column :products, :system_sr_html
  end
end
