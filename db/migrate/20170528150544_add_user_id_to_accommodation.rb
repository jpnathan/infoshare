class AddUserIdToAccommodation < ActiveRecord::Migration
  def change
  	add_column :accommodation, :user_id, :integer
  end
end
