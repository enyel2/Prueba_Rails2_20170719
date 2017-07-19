class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :item
      t.integer :nserie
      t.integer :sizeItem
      t.text :depGeneric
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
