class Pet < ApplicationRecord
    #belongs_to :user, optional: true  -- alias relationship
    has_many :watch_lists
    has_many :users, through: :watch_lists


end
