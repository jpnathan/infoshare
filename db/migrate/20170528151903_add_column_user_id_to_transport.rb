class AddColumnUserIdToTransport < ActiveRecord::Migration
  def change
    add_column :transports, :user_id, :integer
  end
end
