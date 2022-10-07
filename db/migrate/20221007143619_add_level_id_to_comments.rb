class AddLevelIdToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :level_id, :integer
  end
end
