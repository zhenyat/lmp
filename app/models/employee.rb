################################################################################
#   Model: Employee
#
#   Employees list
#
#   Handled via Admin
#
#   Attributes:
#     department_id - FK
#     position_id   - FK
#     level_id      - FK
#     manager_id    - Employee's manager (not NULL)
#     surname       - Employee surname   (not NULL)
#     name          - Employee name      (not NULL)
#     middle_name   - Employee middle name
#     pin           - Employee Personal ID (not NULL)
#     active        - Employee status (not NULL, default=true)
#
#   24.08.2014  ZT created
################################################################################
class Employee < ActiveRecord::Base
  belongs_to :department
  belongs_to :position
  belongs_to :level
  belongs_to :manager

  has_many :assessments

  validates :department, presence: true
  validates :position,   presence: true
  validates :level,      presence: true
  validates :manager,    presence: true
  validates :surname,    presence: true
  validates :name,       presence: true
  validates :pin,        presence: true, uniqueness: true, length: { is: 7 }

  def full_name
    middle_name = self.middle_name.nil? ? '' : self.middle_name
    "#{self.surname} #{self.name} #{middle_name}"
  end
end
