class CreateSitters < ActiveRecord::Migration[6.1]
  def change
    create_table :sitters do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :gender
      t.string :email
      t.string :phone_number
      t.integer :year_of_birth
      t.string :password
      t.string :location
      t.integer :age
      t.integer  :category_id
      t.timestamps
    end
  end
end
