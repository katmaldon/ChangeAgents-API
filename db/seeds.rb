# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Event.destroy_all
Resource.destroy_all

puts "Seeded"

    events = Event.create([{
        title: "BLM Protest GAP",
        location: "Grand Army Plaza",
        image: "some image url",
        zip: "11215",
        date: "06/17/2020",
        time: "3pm",
        url: "blacklivesmatter.com",
        info: "Protest organized by BLM"
        },
        {
        title: "George Floyd Protest CH",
        location: "Nostrand/Fulton",
        image: "some image url",
        zip: "11216",
        date: "06/20/2020",
        time: "5pm",
        url: "blacklivesmatter.com",
        info: "Speeches and information around BLM activism"
        },
        {
        title: "Protest Barclay, Juneteenth Celebration",
        location: "Barclays Center",
        image: "some image url",
        zip: "11217",
        date: "06/19/2020",
        time: "4pm",
        url: "juneteenth.com",
        info: "Protest and celebration"
        }
    ])

    10.times do
        User.create(
            name: Faker::Name.name,
            location: "Brooklyn",
            zip: rand(11211..11218),
            bio: Faker::Games::Fallout.quote
        )
    end

    resources = Resource.create([{

        title: "Open Your Lobby",
        location: "Various locations Brooklyn",
        image: "some image url",
        zip: "all",
        url: "https://www.6sqft.com/here-are-the-nyc-museums-and-theaters-opening-their-lobbies-to-help-protestors/",
        info: "Businesses and institutions all over NYC offer comfort stations, drinks, snacks, and phone charging to protesters"
        },
        {
        title: "Know your rights",
        location: "USA",
        image: "some image url",
        zip: "all",
        url: "https://www.aclu.org/know-your-rights/protesters-rights/",
        info: "The First Amendment protects your right to assemble and express your views through protest."
        },
        {
        title: "What to bring to a protest",
        location: "USA",
        image: "some image url",
        zip: "all",
        url: "https://www.amnestyusa.org/pdfs/SafeyDuringProtest_F.pdf",
        info: "Practical tips for which equipment to bring, which items to avoid, and how to stay safe at protests"
        },
    ])

    user_resources = UserResource.create([{
        user_id: 1,
        resource_id: 4
        },
        {
        user_id: 2,
        resource_id: 5
        },
        {
        user_id: 2,
        resource_id: 5
        },
        {
        user_id: 3,
        resource_id: 4
        },
        {
        user_id: 3,
        resource_id: 6
        }
    ])

    user_events = UserEvent.create([{
        user_id: 1,
        event_id: 4
        },
        {
        user_id: 2,
        event_id: 4
        },
        {
        user_id: 2,
        event_id: 5
        },
        {
        user_id: 3,
        event_id: 6
        },
        {
        user_id: 3,
        event_id: 5
        }
    ])


