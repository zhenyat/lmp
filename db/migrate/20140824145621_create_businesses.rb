class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string  :name,  null: false
      t.string  :title, null: false

      t.timestamps
    end
    add_index :businesses, :name, unique: true

    Business.create name: 'commerce',       title: 'Торговая сеть'
    Business.create name: 'logistics',      title: 'Логистика'
    Business.create name: 'service',        title: 'Сектор обслуживания клиентов'
    Business.create name: 'administration', title: 'Администрация'
  end
end
