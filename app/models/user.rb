################################################################################
#   Model: User
#
#   Users authorized to sign in
#
#   Handled via Admin
#
#   Attributes:
#     role_id          - Foregn Key
#     login            - login name (not null, unique)
#     password_digest  - password secuired (not null)
#     remember_token   - to keep session on
#     pin              - Employee ID
#
#   24.08.2014  ZT created
################################################################################
class User < ActiveRecord::Base
  belongs_to :role

  has_secure_password

  before_save :create_remember_token

  validates :role_id,               presence: true
  validates :login,                 presence: true, uniqueness: true
  validates :password,              presence: true, length: { minimum: 8 }
  validates :password_confirmation, presence: true
#  validates :pin,                   presence: true, uniqueness: true, length: { is: 7 }

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
