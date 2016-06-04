class AddPlaceOfDeathToMemorials < ActiveRecord::Migration
  def change
    add_column :memorials, :place_of_death, :string
  end
end
