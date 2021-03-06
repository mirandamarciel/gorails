class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.string :name
      t.string :link
      t.references :link_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
