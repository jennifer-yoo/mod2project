require 'petfinder'
require 'dotenv/load'

Pet.destroy_all
User.destroy_all
WatchList.destroy_all

client_id =ENV['client_id']
client_secret =ENV['client_secret']
petfinder = Petfinder::Client.new('client_id', 'client_secret')

petfinder.animals[0].each do |anim|
    Pet.create(
        name: anim["name"],
        animal: anim["type"],
        breed: anim["breeds"]["primary"],
        age: anim["age"],
        gender: anim["gender"],
        size: anim["size"],
        img_url: (anim["photos"].empty? ? "https://cdn.shortpixel.ai/spai/w_533+q_lossy+ret_img+to_webp/https://997wooffm.com/wp-content/uploads/2019/01/noimagedog.jpg" : anim["photos"][0]["medium"]),
        description: anim["description"],
        status: anim["status"],
        contact_email: anim["contact"]["email"],
        city: anim["contact"]["address"]["city"],
        state: anim["contact"]["address"]["state"]
    )
end

User.create(name: "Bobby", age: "21", email: "someemail@email.com") 
User.create(name: "Tom", age: "22", email: "another@email.com") 
User.create(name: "John", age: "23", email: "emailexample@email.com") 
User.create(name: "Keanu", age: "24", email: "alternateemail@email.com") 


20.times do 
    WatchList.create(user_id: User.all.sample.id, pet_id: Pet.all.sample.id, note: "Nice catto/doggo")
end

puts "done"