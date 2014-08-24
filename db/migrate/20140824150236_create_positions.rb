class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer :business_id, null: false
      t.string  :name,        null: false
      t.string  :title,       null: false

      t.timestamps
    end

    business_id = Business.find_by_name('commerce').id
    Position.create business_id: business_id, name: 'seller',         title: 'Продавец-консультант'
    Position.create business_id: business_id, name: 'senior_seller',  title: 'Менеджер отдела'
    Position.create business_id: business_id, name: 'sector_head',    title: 'Руководитель сектора'
    Position.create business_id: business_id, name: 'store_director', title: 'Директор магазина'
  end
end
