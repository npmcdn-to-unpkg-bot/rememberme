class RemoveTextsTable < ActiveRecord::Migration
  def change
     drop_table :table_texts
  end
end
