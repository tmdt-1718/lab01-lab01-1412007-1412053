class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.integer :album_id
      t.string :image

      t.timestamps
    end
  end
end
