class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :department_id, null: false
      t.integer :position_id,   null: false
      t.integer :level_id,      null: false
      t.integer :manager_id,    null: false
      t.string  :surname,       null: false
      t.string  :name,          null: false
      t.string  :middle_name
      t.string  :pin,           null: false
      t.boolean :active,        null: false, default: true

      t.timestamps
    end
    add_index :employees, :pin, unique: true

  end
end
