class CreatePhones < ActiveRecord::Migration[6.0]
  def change
    create_table :phones do |t|
      t.string :name
      t.string :model
      t.integer :year
      t.string :url
      t.string :price
      t.string :seller
      t.timestamps
    end
  end
end
