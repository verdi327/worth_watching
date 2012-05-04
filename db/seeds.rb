# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Video.destroy_all

video1 = "http://www.ted.com/talks/brenda_brathwaite_gaming_for_understanding.html"
video2 = "http://www.ted.com/talks/ken_robinson_says_schools_kill_creativity.html"
video3 = "http://www.ted.com/talks/just_how_small_is_an_atom.html"
video4 = "http://www.ted.com/talks/steve_jobs_how_to_live_before_you_die.html"
video5 = "http://www.ted.com/talks/brene_brown_on_vulnerability.html"
video6 = "http://www.ted.com/talks/keith_barry_does_brain_magic.html"
video7 = "http://www.youtube.com/watch?v=xk3UcgbbmxQ"

Video.create(url: video1)
Video.create(url: video2)
Video.create(url: video3)
Video.create(url: video4)
Video.create(url: video5)
Video.create(url: video6)
Video.create(url: video7)

Category.destroy_all

category1 = "Design"
category2 = "Development"
category3 = "Life"
category4 = "User Experience"
category5 = "Business"

Category.create(name: category1)
Category.create(name: category2)
Category.create(name: category3)
Category.create(name: category4)
Category.create(name: category5)

