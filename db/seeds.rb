# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
#
Product.create(title: 'Big Backyard Forestview Cedar Playhouse',
  description:
    %{<p>
        The Forest view Cedar Playhouse by Big Backyard is the perfect addition to every backyard! This beautifully designed playhouse has many details that will keep your children busy and entertained for hours on end. From the Working Door with Doorbell, to the large Premium Windows with Flower Boxes and the extra-large Bay Window, the Forest view has everything! The Cafe Table with Movable Bench provides kids with the perfect spot to chat with friends or put on a puppet show. It has two double sided chalk boards to draw and color on, two clocks with movable hands, and a play phone! The play Kitchen is the perfect place to set up a restaurant. It comes complete with a play stove, sink, and utensil shelf with a pot, pan and spatula.
    </p>},
   image_url: 't1.jpg',
   price: 344.99)
