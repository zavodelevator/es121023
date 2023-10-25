class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
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
