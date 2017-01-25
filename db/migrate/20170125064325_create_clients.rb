class CreateClients < ActiveRecord::Migration[5.0]
  def up
    create_table :clients do |t|

      t.integer "company_id"
      t.string "client_name"
      t.string "address"
      t.float "total_balance", :default => 0.0
      t.timestamps
    end
  end

  def down
    drop_table :clients
  end
end
