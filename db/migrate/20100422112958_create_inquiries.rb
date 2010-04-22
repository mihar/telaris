class CreateInquiries < ActiveRecord::Migration
  def self.up
    create_table :inquiries do |t|
      t.string :contact_name
      t.string :industry
      t.string :phone
      t.string :email
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :inquiries
  end
end
