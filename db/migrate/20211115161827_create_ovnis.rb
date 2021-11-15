class CreateOvnis < ActiveRecord::Migration[6.0]
  def change
    create_table :ovnis do |t|
      t.string :name
      t.float :price
      t.text :details

      t.timestamps
    end
  end
end
