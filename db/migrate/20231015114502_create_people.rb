class CreatePeople < ActiveRecord::Migration[7.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :last_name
      t.string :father_name
      t.string :email
      t.string :phone
      t.text :data
      t.references :firm, null: false, foreign_key: true

      t.timestamps
    end
  end
end
