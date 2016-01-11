# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

require "open-uri"

image_urls = %w(
  https://upload.wikimedia.org/wikipedia/commons/8/8f/Hippie-flower_-_Virginia_-_ForestWander.jpg
  https://upload.wikimedia.org/wikipedia/commons/1/1c/A_Daisy_flower.jpg
  https://upload.wikimedia.org/wikipedia/commons/d/d3/Nelumno_nucifera_open_flower_-_botanic_garden_adelaide2.jpg
)

image_urls.each do |url|
  open(url) do |f|
    Image.create(file: f)
  end
end
