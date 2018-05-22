class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating
      t.date :date
      t.boolean :recommend
      t.references :user, foreign_key: true
      t.references :produit, foreign_key: true

      t.timestamps
    end
  end
end
