class CreateOurFirms < ActiveRecord::Migration[7.1]
  def change
    create_table :our_firms do |t|
      t.string :name
      t.string :edrpou
      t.string :email
      t.string :ipn
      t.text :persons
      t.text :data

      t.timestamps
    end
  end
end
