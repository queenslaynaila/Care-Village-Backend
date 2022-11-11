class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :location
      t.string :email
      t.string :phonenumber
      t.string :password
      t.string :gender
      t.timestamps
    end
  end
end
