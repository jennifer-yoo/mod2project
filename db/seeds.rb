require 'petfinder'


#rails g resource Pet animal breed age gender size img_url name description status contact_email location user_id

# file = File.read("./db/data.json")
# data = JSON.parse(file)

# data["animals"].each do |animal|
#     Pet.create(animal)
# end

Pet.delete_all


#User.create(name: "Jenn", age: 21, email: "gmail@gmail.com")

petfinder = Petfinder::Client.new('2u1nB7dWp15nzrySJeUQFjnltpi8Akf7gjdXsKwYb7dFamtMRo', 'rkifGifKvl4IJRRlo1Y7XZ8Jn27a8xpB12lkLucA')

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

#######################################



puts "seeding complete"