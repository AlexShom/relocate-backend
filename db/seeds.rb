# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "json"

Postcode.destroy_all
Map.destroy_all

mapJson = File.read("../bin/mapData.json")
json = File.read("../bin/londonPostData.json")

result = JSON.parse(json).map{|code| Postcode.create(data: code)}
mapResult = Map.create(name: "base_layer", data: JSON.parse(mapJson))