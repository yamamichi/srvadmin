class AddIndexToipv4admins < ActiveRecord::Migration
  def change
    add_index :ipv4admins,  :ip_address
  end
end
