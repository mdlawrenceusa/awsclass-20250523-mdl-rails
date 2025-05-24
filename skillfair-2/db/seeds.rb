# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Clear existing data
Category.destroy_all

# Create our categories with the same images from our static page
categories = [
  {
    name: "Kitchen",
    image_url: "https://content.codecademy.com/projects/make-a-website/lesson-4/kitchen.jpg",
    description: "Handcrafted kitchen essentials and culinary tools"
  },
  {
    name: "Woodwork", 
    image_url: "https://content.codecademy.com/projects/make-a-website/lesson-4/woodwork.jpg",
    description: "Beautiful wooden crafts and furniture pieces"
  },
  {
    name: "Gifts",
    image_url: "https://content.codecademy.com/projects/make-a-website/lesson-4/gifts.jpg", 
    description: "Unique handmade gifts for every occasion"
  },
  {
    name: "Antiques",
    image_url: "https://content.codecademy.com/projects/make-a-website/lesson-4/antique.jpg",
    description: "Vintage treasures and collectible items"
  }
]

categories.each do |category_attrs|
  Category.create!(category_attrs)
  puts "Created category: #{category_attrs[:name]}"
end

puts "Created #{Category.count} categories"