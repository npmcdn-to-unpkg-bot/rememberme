class AddSlugToMemorials < ActiveRecord::Migration
  def change
    add_column :memorials, :slug, :string
    add_index :memorials, :slug 
  end
end
