class AddPrivilegesToUser < ActiveRecord::Migration
  def change
    add_column :users, :privilege, :boolean
  end
end
