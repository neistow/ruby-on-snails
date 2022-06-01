class CreateTours < ActiveRecord::Migration[7.0]
  def change
    create_table :tours do |t|
      t.string :title
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
