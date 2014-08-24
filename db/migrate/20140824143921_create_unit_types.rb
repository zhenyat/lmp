class CreateUnitTypes < ActiveRecord::Migration
  def change
    create_table :unit_types do |t|
      t.string  :name,  null: false
      t.string  :title, null: false

      t.timestamps
    end
    add_index :unit_types, :name, unique: true

    UnitType.create name: 'store',      title: 'Магазин'
    UnitType.create name: 'stock',      title: 'Склад'
    UnitType.create name: 'backoffice', title: 'Бэк-офис'
  end
end
