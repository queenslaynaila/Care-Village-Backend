class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.string :title
      t.string :name
      t.integer :sitter_id
      t.integer :category_id
      t.string  :about #small descrription of self for those looking for a sitter to see
      t.string :keyskills
      t.string :availability , default:"Available"
      t.string :education
      t.string :gender
      t.text :additionalqualification #any additional qualification that makes u more suitable for the job eg first aid experince
      t.string :location
      t.text :Languages
      t.string :workexperience #in years
      t.string :email
      t.string :phonenumber
      t.integer :ratecharged
      t.timestamps
    end
  end
end
