class Pet < ApplicationRecord
    #belongs_to :user, optional: true  -- alias relationship
    has_many :watch_lists
    has_many :users, through: :watch_lists

    def self.search(search)
      where("animal LIKE ?", "%#{search}")
    end

    def pet_likes
      if self.likes == nil
        self.likes = 0
        self.likes += 1
        self.save
      else
        self.likes += 1
        self.save
      end
    end
     
    
end

