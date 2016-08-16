class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :title
      t.string :species
      t.string :gender
      t.date :birth_date
      t.integer :height
      t.integer :weight
      t.string :picture_url
      t.text :description
      t.string :food
      t.string :exercise
      t.integer :price

      t.timestamps
    end
  end
end
