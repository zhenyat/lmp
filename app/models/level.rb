################################################################################
#   Model: Level
#
#   Professional Levels of Employees
#
#   Handled via Admin
#
#   Attributes:
#     rank        - Level rank (not null, unique)
#     name        - Level name (not null, unique)
#     title       - Level title locale (not null)
#
#   24.08.2014  ZT created
################################################################################
class Level < ActiveRecord::Base
  has_many :behaviors
  has_many :employees

  validates :rank,  presence: true, uniqueness: true
  validates :name,  presence: true, uniqueness: true
  validates :title, presence: true
end
