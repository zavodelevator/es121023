class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :id_s
      t.string :tags
      t.string :group_product
      t.string :sten_on
      t.string :consists_of
      t.string :price
      t.text :data

      t.timestamps
    end
  end
end
