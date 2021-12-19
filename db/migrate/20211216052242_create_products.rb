class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :generu_id,     null: false
      t.string :name,           null: false
      t.string :explanation,    null: false#text
      t.string :price,          null: false#integer
      t.string :image,          null: false
      t.boolean :sales_status,  null: false

      t.timestamps
    end
  end
end
