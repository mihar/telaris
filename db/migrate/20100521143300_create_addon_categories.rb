class CreateAddonCategories < ActiveRecord::Migration
  def self.up
    create_table :addon_categories do |t|
      t.string :name_sl
      t.string :name_en
      t.string :name_hr
      t.string :name_sr

      t.timestamps
    end
  end

  def self.down
    drop_table :addon_categories
  end 
end
