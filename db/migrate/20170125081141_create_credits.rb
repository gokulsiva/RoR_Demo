class CreateCredits < ActiveRecord::Migration[5.0]
  def up
    create_table :credits do |t|

      t.integer "client_id"
      t.string "description"
      t.float "credit_amount"
      t.timestamps
    end
  end

  def down
    drop_table :credits
  end
end
