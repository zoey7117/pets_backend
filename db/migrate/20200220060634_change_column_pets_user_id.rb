class ChangeColumnPetsUserId < ActiveRecord::Migration[6.0]
  def change
    rename_column :pets, :user_id, :owner_id
  end
end
