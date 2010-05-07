class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title_sl
      t.string :title_en
      t.string :title_hr
      t.string :title_sr
      
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
    drop_table :posts
  end
end
