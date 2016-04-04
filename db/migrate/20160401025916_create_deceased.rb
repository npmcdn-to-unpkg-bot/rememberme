class CreateDeceased < ActiveRecord::Migration
  def change
    create_table :deceaseds do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.date :dod
    end
  end
end
