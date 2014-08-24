################################################################################
#   Model: Cluster
#
#   Competency Clusters (Blocks)
#
#   Handled via Admin
#
#   Attributes:
#     name        - Cluster name (not null, unique)
#     title       - Cluster title locale (not null)
#     mutual      - true: if all Cluster competencies are the same for Positions & Levels
#     description - Cluster description (for hint)
#
#   24.08.2014  ZT created
################################################################################
class Cluster < ActiveRecord::Base
  has_many :competencies

  validates :name,  presence: true, uniqueness: true
  validates :title, presence: true
end