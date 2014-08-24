################################################################################
#   Model: DepartmentType
#
#   Types of Departments
#
#   Handled via Admin
#
#   Attributes:
#     name     - the Business activity name
#     title    - the Business activity title locale
#
#   24.08.2014  ZT created
################################################################################
class DepartmentType < ActiveRecord::Base
  has_many :departments

  validates :name,  presence: true, uniqueness: true
  validates :title, presence: true
end
