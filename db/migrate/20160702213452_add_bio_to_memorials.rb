class AddBioToMemorials < ActiveRecord::Migration
  def change
    add_column :memorials, :bio, :text
  end
end
