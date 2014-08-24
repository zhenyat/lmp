################################################################################
#   Model: Behavior
#
#   Behavior Indices for definite Competency / Level
#
#   Handled via Admin
#
#   Attributes:
#     competency_id - FK
#     level_id      - FK
#     description   - Behavior Index description (not null)
#     active,       - Behavior Index status (not null, default = true)
#
#   24.08.2014  ZT created
################################################################################
class Behavior < ActiveRecord::Base
  has_many   :assessments

  belongs_to :competency
  belongs_to :level

  validates :competency_id, presence: true
  validates :level_id,      presence: true
  validates :description,   presence: true
  validates :active,        presence: true
end
