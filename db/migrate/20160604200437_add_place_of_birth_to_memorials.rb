class AddPlaceOfBirthToMemorials < ActiveRecord::Migration
  def change
    add_column :memorials, :place_of_birth, :string
  end
end
