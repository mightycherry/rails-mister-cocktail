# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "seedin"
url1 = "https://cdn-image.realsimple.com/sites/default/files/styles/portrait_435x518/public/mojito-glass.jpg?itok=hGZ3YYwy"
url2 = "https://www.irishcentral.com/images/FT5S Irish coffee lands iStock.jpg"
Dose.destroy_all
Ingredient.destroy_all
i1 = Ingredient.create(name: "lemon")
i2 = Ingredient.create(name: "ice")
i3 = Ingredient.create(name: "mint leaves")
i4 = Ingredient.create(name: "coffee")
i5 = Ingredient.create(name: "Wiskey")
cocktail1 = Cocktail.create(name: "Mojito", remote_photo_url: url1 )
Dose.create!(description: "2cl", cocktail_id: cocktail1.id, ingredient_id: i1.id)
Dose.create!(description: "5cl", cocktail_id: cocktail1.id, ingredient_id: i2.id)
Dose.create!(description: "1cl", cocktail_id: cocktail1.id, ingredient_id: i3.id)
cocktail2 = Cocktail.create(name: "Irish Coffee", remote_photo_url: url2 )
cocktail2.remote_photo_url = url2
Dose.create!(description: "5cl", cocktail_id: cocktail2.id, ingredient_id: i4.id)
Dose.create!(description: "5cl", cocktail_id: cocktail2.id, ingredient_id: i5.id)
p "done spreadin my seed"
