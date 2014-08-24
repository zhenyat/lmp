################################################################################
#   Model: Position
#
#   Job Positions for the given Business activity
#
#   Handled via Admin
#
#   Attributes:
#     business_id   - Foreign Key
#     name          - Position name
#     title         - Position title local
#
#   24.08.2014  ZT created
################################################################################
class Position < ActiveRecord::Base
  belongs_to :business

  has_many   :competencies
  has_many   :employees

  validates :business_id, presence: true
  validates :name,        presence: true
  validates :title,       presence: true
end

