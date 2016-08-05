class AddBodyToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :body, :text
  end
end
