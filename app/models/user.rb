class User < ApplicationRecord
    has_many :quotes

    validates :email, presence: true
    validates :email, uniqueness: true
    has_secure_password
end
