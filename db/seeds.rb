# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

FICTIONGENRES = %w[fantasy, adventure romance, contemporary dystopian mystery horror thriller paranormal historical scifi]
NONFICTIONGENRES = %w[memior self_help personal_development motivational history families_or_relationships]
READINGLEVELS = %w[middle_grade young_adult new_adult adult]

Category.create! name: "Fiction", description: "a literary genre that encompasses imaginative storytelling.
                                                It involves the creation of characters, settings, events, and narratives
                                                that do not exist in the real world. In fiction, authors use their creativity
                                                to write stories that are often for the purpose of entertainment, exploring
                                                themes, or artistic expression."

Category.create! name: "Non-Fiction", description: "a literary genre that encompasses factual stories about real people, places, and events.
                                                    In works of nonfiction, authors relay accurate, verifiable information. These insights,
                                                    experiences, or explanations are grounded in reality and are used to educate, persuade,
                                                    or document true events and occurrences."

FICTIONGENRES.each do |fiction|
  Genre.create! name: fiction, active: true, category_id: 1
end

NONFICTIONGENRES.each do |nonfiction|
  Genre.create! name: nonfiction, active: true, category_id: 2
end

READINGLEVELS.each do |reading_level|
  ReadingLevel.create! name: reading_level
end

Club.create! name: "Cari's Fantasy and Scifi Book Club", founded: DateTime.new(2017, 6, 13, 19), status: 0
User.create! name: "Cari", email: "test", city: "test", state: "test", meeting_preference: 0
Membership.create! club_id: 1, user_id: 1, status: 0, role: 0, joined: Time.now

Meeting.create! scheduled: DateTime.new(2017, 6, 13, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2017, 7, 13, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2017, 8, 10, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2017, 9, 13, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2017, 10, 19, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2017, 11, 15, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2017, 12, 13, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2018, 1, 11, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2018, 2, 8, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2018, 3, 8, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2018, 4, 12, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2018, 5, 9, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2018, 6, 12, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2018, 7, 12, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2018, 8, 9, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2018, 9, 13, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2018, 10, 11, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2018, 11, 8, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2018, 12, 13, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2019, 1, 10, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2019, 2, 13, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2019, 3, 19, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2019, 4, 11, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2019, 5, 9, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2019, 6, 12, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2019, 7, 11, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2019, 8, 15, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2019, 9, 12, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2019, 10, 17, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2019, 11, 10, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2019, 12, 12, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2020, 1, 9, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2020, 2, 13, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2020, 3, 12, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2020, 4, 9, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2020, 5, 14, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2020, 6, 17, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2020, 7, 9, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2020, 8, 13, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2020, 9, 9, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2020, 10, 14, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2020, 11, 12, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2020, 12, 9, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2021, 1, 14, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2021, 2, 11, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2021, 3, 11, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2021, 4, 8, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2021, 5, 13, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2021, 6, 10, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2021, 7, 8, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2021, 8, 19, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2021, 9, 16, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2021, 10, 14, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2021, 11, 11, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2021, 12, 13, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2022, 1, 10, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2022, 2, 10, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2022, 3, 10, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2022, 4, 14, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2022, 5, 12, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2022, 6, 9, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2022, 7, 14, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2022, 8, 18, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2022, 9, 8, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2022, 10, 13, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2022, 11, 10, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2022, 12, 8, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2023, 1, 12, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2023, 2, 9, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2023, 3, 9, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2023, 4, 13, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2023, 5, 11, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2023, 6, 8, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2023, 7, 13, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2023, 8, 10, 19), duration: 120, venue: 0, club_id: 1
Meeting.create! scheduled: DateTime.new(2023, 9, 14, 19), duration: 120, venue: 0, club_id: 1


# Book.create! title: "Handmaid's Tale", author: "Margaret Atwood", page_count: 311, publication_year: 1985, meeting_id: 1
Book.create! title: "Handmaid's Tale", author: 'Margaret Atwood', page_count: 311, publication_year: 1985, meeting_id: 1, membership_id: 1
Book.create! title: 'Left Hand of Darkness', author: 'Ursula K. Le Guin', page_count: 286, publication_year: 1959, meeting_id: 2
Book.create! title: 'The Collapsing Empire', author: 'John Scalzi', page_count: 336, publication_year: 2017, meeting_id: 3
Book.create! title: 'The Vagrant', author: 'Peter Newman', page_count: 308, publication_year: 2015, meeting_id: 4
Book.create! title: 'Blood Song', author: 'Anthony Ryan', page_count: 594, publication_year: 2011, meeting_id: 5
Book.create! title: 'Acacia: The War with the Mein', author: 'Anthony Durham', page_count: 786, publication_year: 2007, meeting_id: 6
Book.create! title: 'Children of Men', author: 'PD James', page_count: 343, publication_year: 1992, meeting_id: 7
Book.create! title: 'Dune', author: 'Frank Herbert', page_count: 412, publication_year: 1965, meeting_id: 8
Book.create! title: 'Neuromancer', author: 'William Gibson', page_count: 292, publication_year: 1984, meeting_id: 9
Book.create! title: "Old Man's War", author: 'John Scalzi', page_count: 324, publication_year: 2005, meeting_id: 10
Book.create! title: 'American Gods', author: 'Neil Gaiman', page_count: 465, publication_year: 2001, meeting_id: 11
Book.create! title: 'The Forever War', author: 'Joe Haldeman', page_count: 236, publication_year: 1974, meeting_id: 12
Book.create! title: 'I will Fear No Evil', author: 'Robert Heinlein', page_count: 513, publication_year: 1970, meeting_id: 13
Book.create! title: 'The Power', author: 'Naomi Alderman', page_count: 400, publication_year: 2016, meeting_id: 14
Book.create! title: 'A Darker Shade of Magic', author: 'VE Schwab', page_count: 401, publication_year: 2015, meeting_id: 15
Book.create! title: 'Neverwhere', author: 'Neil Gaiman', page_count: 330, publication_year: 1996, meeting_id: 16
Book.create! title: 'Space Opera', author: 'Catherine M Valente', page_count: 304, publication_year: 2018, meeting_id: 17
Book.create! title: 'Kings of the Wyld', author: 'Nicholas Eames', page_count: 422, publication_year: 2017, meeting_id: 18
Book.create! title: 'Six Wakes', author: 'Our Lafferty', page_count: 412, publication_year: 2017, meeting_id: 19
Book.create! title: 'Annihilation', author: 'Jeff VanderMeer', page_count: 209, publication_year: 2014, meeting_id: 20
Book.create! title: 'Rule of One', author: 'Ashley Saunders', page_count: 269, publication_year: 2018, meeting_id: 21
Book.create! title: 'The Fifth Season', author: 'NK Jemisin', page_count: 512, publication_year: 2015, meeting_id: 22
Book.create! title: 'Sea Witch', author: 'Sarah Henning', page_count: 384, publication_year: 2018, meeting_id: 23
Book.create! title: 'Spin', author: 'Charles Wilson', page_count: 392, publication_year: 2005, meeting_id: 24
Book.create! title: 'The Name of the Wind', author: 'Patrick Rothfuss', page_count: 722, publication_year: 2007, meeting_id: 25
Book.create! title: 'The Martian Chronicles', author: 'Ray Bradbury', page_count: 222, publication_year: 1950, meeting_id: 26
Book.create! title: 'This is How You Lose the Time War', author: 'Amal El Mohtar', page_count: 209, publication_year: 2019, meeting_id: 27
Book.create! title: 'The Lies of Locke Lamora ', author: 'Scott Lynch', page_count: 499, publication_year: 2006, meeting_id: 28
Book.create! title: 'Finder', author: 'Suzanne Palmer', page_count: 430, publication_year: 2019, meeting_id: 29
Book.create! title: 'Unremarkable ', author: 'Geoff Habiger and Coy Kissee', page_count: 218, publication_year: 2018, meeting_id: 30
Book.create! title: 'Slow Burn', author: 'Bobby Adair', page_count: 246, publication_year: 2014, meeting_id: 31
Book.create! title: 'Towers of Heaven', author: 'Cameron Milan ', page_count: 247, publication_year: 2019, meeting_id: 32
Book.create! title: 'Gardens of the Moon', author: 'Steve Erikson', page_count: 712, publication_year: 1999, meeting_id: 33
Book.create! title: 'Psychology of Time Travel', author: 'Kate Mascarenha', page_count: 314, publication_year: 2018, meeting_id: 34
Book.create! title: 'Magic for Liars', author: 'Sarah Galley', page_count: 258, publication_year: 2019, meeting_id: 35
Book.create! title: 'Steelheart', author: 'Brandon Sanderson', page_count: 498, publication_year: 2013, meeting_id: 36
Book.create! title: "His Majesty's Dragon", author: 'Naomi Novik', page_count: 386, publication_year: 2006, meeting_id: 37
Book.create! title: 'The City in the Middle of the Night', author: 'Charlie Jane Anders', page_count: 358, publication_year: 2019, meeting_id: 38
Book.create! title: 'The Library on Mount Char', author: 'Scott Hawkins', page_count: 402, publication_year: 2015, meeting_id: 39
Book.create! title: 'Vicious', author: 'VE Schwab', page_count: 367, publication_year: 2013, meeting_id: 40
Book.create! title: 'The Hazel Wood', author: 'Melissa Albert', page_count: 359, publication_year: 2018, meeting_id: 41
Book.create! title: 'Dark Matter', author: 'Blake Crouch', page_count: 498, publication_year: 2016, meeting_id: 42
Book.create! title: 'Three Parts Dead', author: 'Max Gladstone', page_count: 335, publication_year: 2012, meeting_id: 43
Book.create! title: "Childhood's End", author: 'Arthur C Clark', page_count: 284, publication_year: 1953, meeting_id: 44
Book.create! title: 'Hyperion', author: 'Dan Simmons', page_count: 532, publication_year: 1989, meeting_id: 45
Book.create! title: 'Dread Nation', author: 'Justina Ireland', page_count: 390, publication_year: 2018, meeting_id: 46
Book.create! title: 'Gods of Jade and Shadow', author: 'Silvia Moreno-Garcia', page_count: 338, publication_year: 2019, meeting_id: 47
Book.create! title: 'Middlegame', author: 'Seanan McGuire', page_count: 529, publication_year: 2019, meeting_id: 48
Book.create! title: 'The Princess Bride', author: 'William Goldman', page_count: 501, publication_year: 1973, meeting_id: 49
Book.create! title: 'The Mount', author: 'Carol Emshwiller', page_count: 246, publication_year: 2002, meeting_id: 50
Book.create! title: 'The Rook', author: "Daniel O'Malley", page_count: 602, publication_year: 2012, meeting_id: 51
Book.create! title: 'The Unspoken Name', author: 'AK Larkwood', page_count: 427, publication_year: 2020, meeting_id: 52
Book.create! title: 'Ten Thousand Dours of January', author: 'Alix E Harrow', page_count: 354, publication_year: 2019, meeting_id: 53
Book.create! title: 'How Roy Thorne Destroyed the Multiverse', author: 'K Eason', page_count: 425, publication_year: 2019, meeting_id: 54
Book.create! title: 'Bacchanal', author: 'Veronica G Henry', page_count: 352, publication_year: 2021, meeting_id: 55
Book.create! title: 'The Ocean at the End of the Lane', author: 'Neil Gaiman', page_count: 197, publication_year: 2013, meeting_id: 56
Book.create! title: 'Ghost Story', author: 'Peter Straub', page_count: 530, publication_year: 1979, meeting_id: 57
Book.create! title: 'The First Sister', author: 'Linden A Lewis', page_count: 386, publication_year: 2020, meeting_id: 58
Book.create! title: 'Daugher of the Empire', author: 'Raymond E Feist', page_count: 432, publication_year: 1987, meeting_id: 59
Book.create! title: 'Gideon the Ninth', author: 'Tamsyn Muir', page_count: 374, publication_year: 2019, meeting_id: 60
Book.create! title: 'The Invisible Life of Addie LaRue', author: 'VE Schwab', page_count: 507, publication_year: 2020, meeting_id: 61
Book.create! title: 'Taming Demons for Beginners', author: 'Annette Marie', page_count: 362, publication_year: 2019, meeting_id: 62
Book.create! title: 'Foundryside', author: 'Robert Jackson Bennett', page_count: 512, publication_year: 2018, meeting_id: 63
Book.create! title: 'Star Eater', author: 'Kerstin Hall', page_count: 448, publication_year: 2021, meeting_id: 64
Book.create! title: 'Nevernight', author: 'Jay Kristoff', page_count: 448, publication_year: 2016, meeting_id: 65
Book.create! title: 'Ordinary Monsters', author: 'JM Miro', page_count: 648, publication_year: 2022, meeting_id: 66
Book.create! title: 'The Paper Magician', author: 'Charlie N Homberg', page_count: 234, publication_year: 2014, meeting_id: 67
Book.create! title: 'Destination Void', author: 'Frank Herbert', page_count: 290, publication_year: 1966, meeting_id: 68
Book.create! title: 'John Dies at the End', author: 'Jason Pargin/David Wong', page_count: 459, publication_year: 2007, meeting_id: 69
Book.create! title: 'Slaughterhouse Five', author: 'Kurt Vonnegut', page_count: 231, publication_year: 1969, meeting_id: 70
Book.create! title: 'Project Hail Mary', author: 'Andy Weir', page_count: 482, publication_year: 2021, meeting_id: 71
Book.create! title: 'Red Shirts', author: 'John Scalzi', page_count: 320, publication_year: 2012, meeting_id: 72
Book.create! title: 'When Women were Dragons', author: 'Kelly Barnhill', page_count: 343, publication_year: 2022, meeting_id: 73
Book.create! title: 'The House in the Cerulean Sea', author: 'TJ Klune', page_count: 416, publication_year: 2020, meeting_id: 74
Book.create! title: 'The Thousand Crimes of Ming Tsu', author: 'Tom Lin', page_count: 239, publication_year: 2021, meeting_id: 75
Book.create! title: 'Immortal', author: 'Gene Doucette', page_count: 378, publication_year: 2010, meeting_id: 76




