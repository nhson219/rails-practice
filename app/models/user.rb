class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum is_admin: [:false, :true]
  enum status: %i[block non_block]

  validates :email, presence: true
  validates :password, presence: true, confirmation: true

  scope :is_not_admin, -> { where(is_admin: is_admins[:false]) }
  scope :status_non_block, -> { where(status: statuses[:non_block]) }
end
