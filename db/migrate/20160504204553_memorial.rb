class Memorial < ActiveRecord::Migration
  def change
     rename_table :deceaseds, :memorials
  end
end
