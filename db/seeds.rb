# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Board.destroy_all
Dart.destroy_all

User.create(username: 'admin', email: 'jkrantz@gmail.com', password: 'password', password_confirmation: 'password')
admin = User.find_by(username: 'admin')

# Beards Board
admin.boards << Board.new(name: "Beards", description: "Manly Man Beards")
man_beards = Board.find_by(name: "Beards")

man_beards.darts << Dart.new(link_url: "http://yourdaddid.com/2011/01/28/the-beard-week-three/",
                            image_url: "http://yourdaddid.files.wordpress.com/2011/01/danhaggerty5.jpg",
                            caption: "Awesome beard",
                            user_id: admin.id)

man_beards.darts << Dart.new(link_url: "http://freemustacherides.wordpress.com/page/2/",
                            image_url: "http://freemustacherides.files.wordpress.com/2010/06/grizzly-adams.jpg",
                            caption: "Awesome beard",
                            user_id: admin.id)

man_beards.darts << Dart.new(link_url: "http://therearegiants.com/index.php/lifestyle/10-grooming",
                            image_url: "http://www.unhipchick.com/wp-content/uploads/2010/10/grizzly-adams1.jpg",
                            caption: "Awesome beard",
                            user_id: admin.id)

man_beards.darts << Dart.new(link_url: "http://www.graceforsinners.com/2012/02/charles-spurgeon-growing-beard-is.html",
                            image_url: "http://1.bp.blogspot.com/-4Ws7Ks7uWlM/T0HPoBjuZZI/AAAAAAAABEE/v96aysOPcUY/s1600/Screen+Shot+2012-02-19+at+11.41.13+PM.png",
                            caption: "Awesome beard",
                            user_id: admin.id)

# man_beards.darts << Dart.new(link_url: "http://stevewebel.com/tag/hunan/",
#                             image_url: "http://stevewebel.com/wp-content/uploads/2007/09/whiskers.jpg",
#                             user_id: admin.id)

man_beards.darts << Dart.new(link_url: "http://www.yesfans.com/showthread.php?54889-Goatee-Moustache-Beard-Muttonchops!-!/page3",
                            image_url: "http://3.bp.blogspot.com/_4B6BR9aWHAk/SH2ILGmbNQI/AAAAAAAAAaQ/NwS1iFsSfCw/s400/World%27s%2BLargest%2BBeard%2BMen%2B5.jpg",
                            caption: "Awesome beard",
                            user_id: admin.id)

# Steaks
admin.boards << Board.new(name: "Steaks", description: "Juicy Steaks")
steaks = Board.find_by(name: "Steaks")

# steaks.darts << Dart.new(link_url: "http://www.seafoodcruise.com/group_functions_menus.html",
#                             image_url: "http://www.seafoodcruise.com/images/Grilled_Steak.jpg",
#                             user_id: admin.id)

steaks.darts << Dart.new(link_url: "http://www.gnaprime.com/wagyu-new-york-strip-steak.php",
                            image_url: "http://www.gnaprime.com/product-photos/category/100/22.jpg",
                            caption: "Best Steak",
                            user_id: admin.id)

steaks.darts << Dart.new(link_url: "http://www.tallgrassbeef.com/premiumsteaks.html",
                            image_url: "http://www.tallgrassbeef.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/4/14ozribeyeseccooked-800_4.jpg",
                            caption: "Best Steak",
                            user_id: admin.id)

steaks.darts << Dart.new(link_url: "http://www.tallgrassbeef.com/premiumsteaks/new-york-strip-steaks.html",
                            image_url: "http://www.tallgrassbeef.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/0/10oznystripraw-800_4.jpg",
                            caption: "Best Steak",
                            user_id: admin.id)

#cigars
admin.boards << Board.new(name: "Cigars", description: "Tightt Cigars")
cigars = Board.find_by(name: "Cigars")

cigars.darts << Dart.new(link_url: "http://martinezcigars.com/",
                            image_url: "http://martinezcigars.com/images/cigar.png",
                            caption: "Nice Cigar",
                            user_id: admin.id)
cigars.darts << Dart.new(link_url: "http://www.insuranceproviders.com/will-smoking-a-cigar-occasionally-increase-my-life-insurance/",
                            image_url: "http://www.insuranceproviders.com/Images/cigar-life-insurance.jpg",
                            caption: "Nice Cigar",
                            user_id: admin.id)
cigars.darts << Dart.new(link_url: "http://theweeklycigar.com/",
                            image_url: "http://theweeklycigar.com/wp-content/uploads/2012/07/2-2.jpg",
                            caption: "Nice Cigar",
                            user_id: admin.id)
cigars.darts << Dart.new(link_url: "http://www.worldfamouscigarbar.com/event/gctc-oliva-event-hennessy-tasting/",
                            image_url: "http://www.worldfamouscigarbar.com/wp-content/uploads/2012/09/images_OlivaCigars.gif",
                            caption: "Nice Cigar",
                            user_id: admin.id)
cigars.darts << Dart.new(link_url: "http://www.casasfumando.com/padron-1964-anniversary-series-maduro-principe/",
                            image_url: "http://www.casasfumando.com/wp-content/uploads/2010/06/P1964-01-300x243.jpg",
                            caption: "Nice Cigar",
                            user_id: admin.id)

admin.boards << Board.new(name: "Razors", description: "Trimmed Up")
razors = Board.find_by(name: "Razors")

razors.darts << Dart.new(link_url: "http://atomictoasters.com/2012/05/user-input-well-groomed-nerds/",
                            image_url: "http://atomictoasters.com/wp-content/uploads/2012/05/Straight-Razor-Shave.jpg",
                            caption: "Sweet Razor",
                            user_id: admin.id)
razors.darts << Dart.new(link_url: "http://gentlemint.com/tack/121795/",
                            image_url: "http://gentlemint.com/media/images/2012/08/21/9a8456ea.jpg.505x650_q85.jpg",
                            caption: "Sweet Razor",
                            user_id: admin.id)
razors.darts << Dart.new(link_url: "http://gearpatrol.com/2010/09/30/hart-steel-straight-razor/",
                            image_url: "http://gearpatrol.wpengine.netdna-cdn.com/wp-content/uploads/2010/09/Hart-Steel-Straight-Razor-Gear-Patrol.jpg",
                            caption: "Sweet Razor",
                            user_id: admin.id)

admin.boards << Board.new(name: "Random", description: "Other")
random = Board.find_by(name: "Random")

random.darts << Dart.new(link_url: "http://uncrate.com/stuff/leatherman-super-tool-300/",
                            image_url: "http://uncrate.com/p/2009/08/leatherman-super-tool.jpg",
                            caption: "Random",
                            user_id: admin.id)

