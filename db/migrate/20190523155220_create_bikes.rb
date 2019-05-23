class CreateBikes < ActiveRecord::Migration[5.2]
  def change
    create_table :bikes do |t|
      t.string :name
      t.string :brand
      t.string :category
      t.text :address
      t.integer :price_per_day
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
