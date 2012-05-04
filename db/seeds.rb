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

videoA = Video.create(url: video1)
videoB = Video.create(url: video2)
videoC = Video.create(url: video3)
videoD = Video.create(url: video4)
videoE = Video.create(url: video5)
videoF = Video.create(url: video6)
videoG = Video.create(url: video7)

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

Tag.destroy_all

tag1 = "funny"
tag2 = "inspiring"
tag3 = "hot"
tag4 = "motivating"
tag5 = "smart"

VideoTag.destroy_all

VideoTag.create(video_id: videoA.id, tag_id: (Tag.create(name: tag1).id) )
VideoTag.create(video_id: videoB.id, tag_id: (Tag.create(name: tag2).id) )
VideoTag.create(video_id: videoC.id, tag_id: (Tag.create(name: tag3).id) )
VideoTag.create(video_id: videoD.id, tag_id: (Tag.create(name: tag4).id) )
VideoTag.create(video_id: videoE.id, tag_id: (Tag.create(name: tag5).id) )


