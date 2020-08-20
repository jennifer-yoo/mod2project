class User < ApplicationRecord
    has_many :watch_lists
    has_many :pets, through: :watch_lists
    has_secure_password
    
    validates :age, numericality: {greater_than_or_equal_to: 18 }
    validates :email, uniqueness: true, presence: true
    validates :password, length: {minimum: 6}

    
end
