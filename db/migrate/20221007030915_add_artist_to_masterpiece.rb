class AddArtistToMasterpiece < ActiveRecord::Migration[7.0]
  def change
    add_column :masterpieces, :artist, :string
  end
end
