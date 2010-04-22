class CreateAbouts < ActiveRecord::Migration
  def self.up
    create_table :abouts do |t|
      t.text :about
      t.text :about_html

      t.timestamps
    end
    
    About.create :about => "Spremeni me!"
  end

  def self.down
    drop_table :abouts
  end
end
