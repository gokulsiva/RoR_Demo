class CreateClientCreditJoin < ActiveRecord::Migration[5.0]
  def up
    create_table :clients_credits, :id => false do |t|
      t.integer "client_id"
      t.integer "credit_id"
    end
    add_index("clients_credits", ["client_id", "credit_id"])
  end

  def down
    drop_table :clients_credits
  end
end
