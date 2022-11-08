class CreateSitters < ActiveRecord::Migration[6.1]
  def change
    create_table :sitters do |t|
      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :gender
      t.string :email
      t.string :phonenumber
      t.string :yearOfBirth
      t.string :password
      t.string :location
      t.timestamps
    end
  end
end
