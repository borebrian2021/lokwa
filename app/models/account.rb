class Account < ApplicationRecord
    has_secure_password
    validates :email, presence: true,unique: true
end
