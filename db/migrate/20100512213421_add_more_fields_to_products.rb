class AddMoreFieldsToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :technical_sl, :text
    add_column :products, :technical_en, :text
    add_column :products, :technical_hr, :text
    add_column :products, :technical_sr, :text
    add_column :products, :technical_sl_html, :text
    add_column :products, :technical_en_html, :text
    add_column :products, :technical_hr_html, :text
    add_column :products, :technical_sr_html, :text
  end

  def self.down
    remove_column :products, :technical_sl
    remove_column :products, :technical_en
    remove_column :products, :technical_hr
    remove_column :products, :technical_sr
    remove_column :products, :technical_sl_html
    remove_column :products, :technical_en_html
    remove_column :products, :technical_hr_html
    remove_column :products, :technical_sr_html
  end
end
