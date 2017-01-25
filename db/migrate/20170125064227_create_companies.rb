class CreateCompanies < ActiveRecord::Migration[5.0]
  def up
    create_table :companies do |t|

      t.integer "user_id"
      t.string "company_name"
      t.timestamps
    end
  end

  def down
    drop_table :companies
  end
end
