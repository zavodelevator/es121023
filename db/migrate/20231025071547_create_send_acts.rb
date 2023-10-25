class CreateSendActs < ActiveRecord::Migration[7.1]
  def change
    create_table :send_acts do |t|
      t.text :data

      t.timestamps
    end
  end
end
