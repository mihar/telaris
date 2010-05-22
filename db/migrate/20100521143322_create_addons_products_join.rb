class CreateAddonsProductsJoin < ActiveRecord::Migration
  def self.up
    create_table :addons_products, :id => false, :force => true do |t|
      t.integer :addon_id
      t.integer :product_id
      
    end
  end

  def self.down
    drop_table :addons_products
  end
end
