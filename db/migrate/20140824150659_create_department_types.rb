class CreateDepartmentTypes < ActiveRecord::Migration
  def change
    create_table :department_types do |t|
      t.string  :name,  null: false
      t.string  :title, null: false

      t.timestamps
    end
    add_index :department_types, :name, unique: true

    DepartmentType.create name: 'sector',    title: 'Сектор'
    DepartmentType.create name: 'direction', title: 'Дирекция'
  end
end
