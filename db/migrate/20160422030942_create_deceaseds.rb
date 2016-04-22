class CreateDeceaseds < ActiveRecord::Migration
  def change
    create_table :deceaseds do |t|

      t.timestamps null: false
    end
  end
end
