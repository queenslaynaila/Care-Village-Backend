class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :username
      t.string :password
      t.string :usertype  #either client or sitter
      t.integer :client_id
      t.integer :sitter_id
      t.timestamps
    end
  end
end
