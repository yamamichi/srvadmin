class CreateIpv4admins < ActiveRecord::Migration
  def change
    create_table :ipv4admins do |t|
      t.integer :ip_status
      t.string :ip_address, :limit=>18
      t.text :host
      t.text :note
      t.date :update_time

      t.timestamps
    end
  end
end
