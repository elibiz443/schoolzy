class User < ApplicationRecord
  has_secure_password
  has_many :time_tables
  has_many :registers

  validates :username, presence: true, uniqueness: true
  validates :gurdian_contact, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  default_scope {order('users.created_at DESC')}

  Roles = [:super_admin , :admin, :customer]

  def is?( requested_role )
    self.role == requested_role.to_s
  end
end
