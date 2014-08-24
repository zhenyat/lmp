class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.integer :unit_type_id, null: false
      t.string :name,          null: false
      t.string :title,         null: false

      t.timestamps
    end
    add_index :units, :name, unique: true

    unit_type_id = UnitType.find_by_name('store').id
    Unit.create unit_type_id: unit_type_id, name: 'lefortovo', title: 'Лефортово'
    Unit.create unit_type_id: unit_type_id, name: 'khimki',    title: 'Химки'
  end
end
