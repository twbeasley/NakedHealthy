class SetupInitialDatabase < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :image, :string
    add_column :photos, :paragraph, :text
    remove_column :articles, :photo
  end
end
