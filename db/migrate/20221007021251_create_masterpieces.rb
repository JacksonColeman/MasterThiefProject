class CreateMasterpieces < ActiveRecord::Migration[7.0]
  def change
    create_table :masterpieces do |t|
      t.string :name
      t.string :image
      t.integer :value
      t.integer :level_id

      t.timestamps
    end
  end
end
