class AddUserIdToDeceaseds < ActiveRecord::Migration
  def change
    add_column :deceaseds, :user_id, :integer
  end
end
