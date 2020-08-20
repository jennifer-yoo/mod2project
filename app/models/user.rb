class User < ApplicationRecord
    has_many :watch_lists
    has_many :pets, through: :watch_lists
    has_secure_password
    #has_many :pets -- alias relationship

    
end
