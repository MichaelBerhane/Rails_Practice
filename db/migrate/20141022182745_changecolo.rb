class Changecolo < ActiveRecord::Migration
  def change
    rename_column :posts, :admin_user_id, :admin_id
  end
end
