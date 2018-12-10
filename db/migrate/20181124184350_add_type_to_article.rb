class AddTypeToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :category_id, :integer
    add_column :categories, :category_id :integer
  end
end
