class AddMemorialIdToPosts < ActiveRecord::Migration
  def change
     add_column :posts, :memorial_id, :integer 
  end
end
