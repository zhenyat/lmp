class Business < ActiveRecord::Base
  has_many :positions
  has_many :departments

  validates :name,  presence: true, uniqueness: true
  validates :title, presence: true
end
