class Department < ActiveRecord::Base
  belongs_to :unit
  belongs_to :department_type
  belongs_to :business

  has_many  :employees

  validates :unit_id,            presence: true
  validates :department_type_id, presence: true
  validates :business_id,        presence: true
  validates :name,               presence: true
  validates :title,              presence: true
end
