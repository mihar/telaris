class CreateAbouts < ActiveRecord::Migration
  def self.up
    create_table :abouts do |t|
      t.text :about_sl
      t.text :about_en
      t.text :about_hr
      t.text :about_sr
      t.text :about_sl_html
      t.text :about_en_html
      t.text :about_hr_html
      t.text :about_sr_html

      t.timestamps
    end
    
    About.create :about_sl => "Spremeni me!", :about_en => "Spremeni me!", :about_hr => "Spremeni me!", :about_sr => "Spremeni me!"
  end

  def self.down
    drop_table :abouts
  end
end
