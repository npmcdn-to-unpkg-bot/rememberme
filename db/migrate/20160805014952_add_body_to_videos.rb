class AddBodyToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :body, :text
  end
end
