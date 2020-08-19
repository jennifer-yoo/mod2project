require 'petfinder'

User.delete_all
Pet.delete_all
WatchList.delete_all

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


User.create(name: "Bobby", age: "21", email: "someemail@email.com") 
User.create(name: "Tom", age: "22", email: "another@email.com") 
User.create(name: "John", age: "23", email: "emailexample@email.com") 
User.create(name: "Keanu", age: "24", email: "alternateemail@email.com") 

# Pet.create(name: "Dog1", age: "5", breed: "German Shepard", img_url: "https://unsplash.com/photos/FIqLkYU5mEc")
# Pet.create(name:"Dog2", age: "6", breed: "Yorkie", img_url: "https://unsplash.com/photos/5hpvOt3tIUA")
# Pet.create(name:"Dog3", age: "7", breed: "Golden Retriever", img_url:"https://unsplash.com/photos/wNRutxmyR8w")
# Pet.create(name:"Dog4", age: "8", breed: "Siberian Husky", img_url:"https://unsplash.com/photos/zc4MEZMdXhc")
# Pet.create(name:"Cat1", age: "3", breed: "American Shorthair", img_url:"https://www.shutterstock.com/image-photo/cute-american-shorthair-cat-kitten-352176329")
# Pet.create(name:"Cat2", age: "4", breed: "Siberian", img_url:"https://unsplash.com/photos/gkO4wFAkNCw")
# Pet.create(name:"Cat3", age: "5", breed: "Toyger", img_url:"https://www.shutterstock.com/image-photo/adorable-toyger-kitten-collar-lying-on-546100249")


20.times do 
WatchList.create(user_id: User.all.sample.id, pet_id: Pet.all.sample.id, note: "Nice catto/doggo")
end


