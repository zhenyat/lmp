class Unit < ActiveRecord::Base
  belongs_to :unit_type

  has_many :departments

  validates :name,  presence: true, uniqueness: true
  validates :title, presence: true
end
