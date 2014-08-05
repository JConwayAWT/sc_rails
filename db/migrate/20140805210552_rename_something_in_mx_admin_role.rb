class RenameSomethingInMxAdminRole < ActiveRecord::Migration
  def change
    rename_column :mx_admin_roles, :roleName, :role_name_new
    rename_column :mx_admin_roles, :roleID, :id
  end
end
