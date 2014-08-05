class RenameMxAdminUserTable < ActiveRecord::Migration
  def change
    rename_table :mx_admin_user, :mx_admin_users
  end
end
