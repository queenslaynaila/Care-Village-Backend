class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|

      t.integer :sitter_id
      t.integer :category_id
      t.integer :client_id
      t.integer :price
      t.timestamps
    end
  end
end
