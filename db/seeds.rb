# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: 'admin', email: 'jkrantz@gmail.com', password: 'password', password_confirmation: 'password')
admin = User.find_by(username: 'admin')

# Beards Board
admin.boards << Board.new(name: "Beards", description: "Manly Man Beards")
man_beards = Board.find_by(name: "Beards")

man_beards.darts << Dart.new(link_url: "http://yourdaddid.com/2011/01/28/the-beard-week-three/",
                            image_url: "http://yourdaddid.files.wordpress.com/2011/01/danhaggerty5.jpg",
                            user_id: admin.id)

man_beards.darts << Dart.new(link_url: "http://freemustacherides.wordpress.com/page/2/",
                            image_url: "http://freemustacherides.files.wordpress.com/2010/06/grizzly-adams.jpg",
                            user_id: admin.id)

man_beards.darts << Dart.new(link_url: "http://therearegiants.com/index.php/lifestyle/10-grooming",
                            image_url: "http://www.unhipchick.com/wp-content/uploads/2010/10/grizzly-adams1.jpg",
                            user_id: admin.id)

man_beards.darts << Dart.new(link_url: "http://www.graceforsinners.com/2012/02/charles-spurgeon-growing-beard-is.html",
                            image_url: "http://1.bp.blogspot.com/-4Ws7Ks7uWlM/T0HPoBjuZZI/AAAAAAAABEE/v96aysOPcUY/s1600/Screen+Shot+2012-02-19+at+11.41.13+PM.png",
                            user_id: admin.id)

man_beards.darts << Dart.new(link_url: "http://stevewebel.com/tag/hunan/",
                            image_url: "http://stevewebel.com/wp-content/uploads/2007/09/whiskers.jpg",
                            user_id: admin.id)

man_beards.darts << Dart.new(link_url: "http://www.yesfans.com/showthread.php?54889-Goatee-Moustache-Beard-Muttonchops!-!/page3",
                            image_url: "http://3.bp.blogspot.com/_4B6BR9aWHAk/SH2ILGmbNQI/AAAAAAAAAaQ/NwS1iFsSfCw/s400/World%27s%2BLargest%2BBeard%2BMen%2B5.jpg",
                            user_id: admin.id)

# Steaks
admin.boards << Board.new(name: "Steaks", description: "Juicy Steaks")
steaks = Board.find_by(name: "Steaks")

steaks.darts << Dart.new(link_url: "http://www.seafoodcruise.com/group_functions_menus.html",
                            image_url: "http://www.seafoodcruise.com/images/Grilled_Steak.jpg",
                            user_id: admin.id)
