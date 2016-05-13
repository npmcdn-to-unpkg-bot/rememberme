class CreateTableTexts < ActiveRecord::Migration
  def change
    create_table :table_texts do |t|
      t.text :body
    end
  end
end
