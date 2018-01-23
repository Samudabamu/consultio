class User < ApplicationRecord

has_secure_password

  # has_many :hunches   # hunches table will need user_id

  validates :email, presence: true,
  uniqueness: true

end
