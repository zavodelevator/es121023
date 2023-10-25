class CreateJoinTableProductSupplier < ActiveRecord::Migration[7.1]
  def change
    create_join_table :products, :suppliers do |t|
      # t.index [:product_id, :supplier_id]
      # t.index [:supplier_id, :product_id]
      
      t.index [:product_id, :supplier_id], unique: true
      t.index [:supplier_id, :product_id]
      
    end
  end
end
