# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number:  "0122406010",
    category:     "french"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number:  "0122406010",
    category:     "belgian"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number:  "0122406010",
    category:     "french"
  },
  {
    name:         "Le Japan dream",
    address:      "rue sainte Anne 75009 Paris",
    phone_number:  "0122406010",
    category:     "japanese"
  },
  {
    name:         "Pizza Pino",
    address:      "place de la république 75011 Paris",
    phone_number:  "0122406010",
    category:     "italian"
  },

]
restaurants_attributes.each { |params| Restaurant.create!(params) }
