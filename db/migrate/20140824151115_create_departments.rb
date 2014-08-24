class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.integer :unit_id,            null: false
      t.integer :business_id,        null: false
      t.integer :department_type_id, null: false
      t.string  :name,               null: false
      t.string  :title,              null: false

      t.timestamps
    end
  end
end
