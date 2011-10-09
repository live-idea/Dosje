class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :surname
      t.text :shortinfo
      t.references :category

      t.timestamps
    end
    add_index :contacts, :category_id
  end
end
