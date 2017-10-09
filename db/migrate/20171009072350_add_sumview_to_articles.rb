class AddSumviewToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :sumview, :integer
  end
end
