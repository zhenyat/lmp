################################################################################
#   Model: Competency
#
#   Competencies for a given set of Cluster & Position
#
#   Handled via Admin
#
#   Attributes:
#     position_id - FK
#     cluster_id  - FK
#     name        - competency name (not null)
#     title       - competency title locale (not null)
#     rank        - competency rank (not null, default=1)
#     description - competency description
#
#   24.08.2014  ZT created
################################################################################
class Competency < ActiveRecord::Base
  belongs_to :cluster
  belongs_to :position

  has_many   :behaviors

  validates :position_id, presence: true
  validates :cluster_id,  presence: true
  validates :name,        presence: true
  validates :title,       presence: true
  validates :rank,        presence: true
end
