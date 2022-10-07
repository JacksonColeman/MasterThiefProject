# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

l1 = Level.create(name: "The Art Institute of Chicago", difficulty: "easy");
l2 = Level.create(name: "The Met", difficulty: "medium");
l3 = Level.create(name: "The Louvre", difficulty: "hard");

m1 = Masterpiece.create(name: "Nighthawks", artist: "Edward Hopper", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Nighthawks_by_Edward_Hopper_1942.jpg/2560px-Nighthawks_by_Edward_Hopper_1942.jpg",value: rand(1..20), level_id: l1.id);
m2 = Masterpiece.create(name: "The Child's Bath", artist: "Mary Cassatt", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/The_Child%27s_Bath_by_Mary_Cassatt_1893.jpg/440px-The_Child%27s_Bath_by_Mary_Cassatt_1893.jpg",value: rand(1..20), level_id: l1.id);
m3 = Masterpiece.create(name: "A Sunday Afternoon on the Island of La Grande Jatte", artist: "Georges Seurat", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/A_Sunday_on_La_Grande_Jatte%2C_Georges_Seurat%2C_1884.png/600px-A_Sunday_on_La_Grande_Jatte%2C_Georges_Seurat%2C_1884.png",value: rand(1..20), level_id: l1.id);
m4 = Masterpiece.create(name: "The Old Guitarist", artist: "Pablo Picasso", image:"https://upload.wikimedia.org/wikipedia/en/thumb/b/bc/Old_guitarist_chicago.jpg/1024px-Old_guitarist_chicago.jpg",value: rand(1..20), level_id: l1.id);
m5 = Masterpiece.create(name: "Paris Street; Rainy Day", artist: "Gustave Caillebotte", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Gustave_Caillebotte_-_Paris_Street%3B_Rainy_Day_-_Google_Art_Project.jpg/1920px-Gustave_Caillebotte_-_Paris_Street%3B_Rainy_Day_-_Google_Art_Project.jpg",value: rand(1..20), level_id: l1.id);
m6 = Masterpiece.create(name: "By the Water", artist: "Pierre-Auguste Renoir", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Pierre-Auguste_Renoir_-_By_the_Water.jpg/1920px-Pierre-Auguste_Renoir_-_By_the_Water.jpg",value: rand(1..20), level_id: l1.id);
m7 = Masterpiece.create(name: "Self-portrait", artist: "Vincent Van Gogh", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/VanGogh_1887_Selbstbildnis.jpg/1280px-VanGogh_1887_Selbstbildnis.jpg",value: rand(1..20), level_id: l1.id);
m8 = Masterpiece.create(name: "Water Lilies", artist: "Claude Monet", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Claude_Monet_-_Water_Lilies_-_1906%2C_Ryerson.jpg/1920px-Claude_Monet_-_Water_Lilies_-_1906%2C_Ryerson.jpg",value: rand(1..20), level_id: l1.id);
m9 = Masterpiece.create(name: "Painterly Realism of a Football Player—Color Masses in the 4th Dimension", artist: "Kazimir Malevich", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Painterly_Realism_of_a_Football_Player_%E2%80%93_Color_Masses_in_the_4th_Dimension_%28Malevich%2C_1915%29_-_Google_Art_Project.jpg/1024px-Painterly_Realism_of_a_Football_Player_%E2%80%93_Color_Masses_in_the_4th_Dimension_%28Malevich%2C_1915%29_-_Google_Art_Project.jpg",value: rand(1..20), level_id: l1.id)
m10 = Masterpiece.create(name: "American Gothic", artist: "Grant Wood", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Grant_Wood_-_American_Gothic_-_Google_Art_Project.jpg/1280px-Grant_Wood_-_American_Gothic_-_Google_Art_Project.jpg",value: rand(1..20), level_id: l1.id);

Comment.create(text: "This level is too easy!", user_id: 1)