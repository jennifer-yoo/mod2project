require 'petfinder'
# require 'rest-client'
# require 'json'
require 'pry'

# Pet.delete_all

petfinder = Petfinder::Client.new('2u1nB7dWp15nzrySJeUQFjnltpi8Akf7gjdXsKwYb7dFamtMRo', 'rkifGifKvl4IJRRlo1Y7XZ8Jn27a8xpB12lkLucA')

petfinder.animals.each do |ani|
        ani.each do |animal|
#        binding.pry
        Pet.create(
        type: animal["type"],
        breed: animal["breeds"]["primary"],
        age: animal["age"],
        gender: animal["gender"],
        size: animal["size"],
        img_url: animal["photos"]["small"],
        name: animal["name"],
        description: animal["description"],
        #video_url: animal["videos"],
        status: animal["status"],
        #tags: animal["tags"],
        contact_email: animal["contact"]["email"],
        location: animal["contact"]["email"]["address"]["city"]
        )
    end
end
#binding.pry

puts "seeding complete"