class Pet < ApplicationRecord
    #belongs_to :user, optional: true  -- alias relationship
    has_many :watch_lists
    has_many :users, through: :watch_lists

    def self.search(query)
        if query.present?
          where('ANIMAL like ?', "%#{query}%")
        else
          self.all
        end
    end

     
end

