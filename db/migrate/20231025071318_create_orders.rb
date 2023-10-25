class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :our_firm, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
      t.text :data

      t.timestamps
    end   
  end
end
