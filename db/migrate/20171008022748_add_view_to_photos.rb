class AddViewToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :view, :integer
  end
end
