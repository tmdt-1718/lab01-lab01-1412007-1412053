class RemoveCoverFromAlbums < ActiveRecord::Migration[5.1]
  def change
  	remove_column :albums, :cover, :string
  end
end
