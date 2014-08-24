################################################################################
#   Model: UnitType
#
#   Types of Company Unit Types
#
#   Handled via Admin
#
#   Attributes:
#     name  - the Unit Type name
#     title - the Unit Type title locale
#
#   24.08.2014  ZT created
################################################################################
class UnitType < ActiveRecord::Base
  has_many :units

  validates :name,  presence: true, uniqueness: true
  validates :title, presence: true
end
