class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :cover
      t.integer :user_id
      t.integer :sumview

      t.timestamps
    end
  end
end
