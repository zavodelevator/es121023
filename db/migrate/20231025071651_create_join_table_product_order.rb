class CreateJoinTableProductOrder < ActiveRecord::Migration[7.1]
  def change
    create_join_table :products, :orders do |t|
      # t.index [:product_id, :order_id]
      # t.index [:order_id, :product_id]
      t.index [:product_id, :order_id], unique: true
      t.index [:order_id, :product_id]
    end
  end
end
