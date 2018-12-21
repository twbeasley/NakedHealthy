class AddCategoriesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name,
      t.integer :category_id,
      t.integer :blah
    end
  end
end
