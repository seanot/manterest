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

User.create(username: 'FireSoFly', email: 'jkrantz@gmail.com', password: 'password', password_confirmation: 'password')
admin = User.find_by(username: 'FireSoFly')

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
man_beards.darts << Dart.new(link_url: "http://www.gq.com/style/blogs/the-gq-eye/2013/09/jon-hamm-emmy-beard-get-the-look.html",
                            image_url: "http://www.gq.com/style/blogs/the-gq-eye/jon-hamm-beard-emmys-2013.jpg",
                            caption: "Awesome beard",
                            user_id: admin.id)
man_beards.darts << Dart.new(link_url: "http://www.pinterest.com/pin/390616967651245406/",
                            image_url: "http://media-cache-ak0.pinimg.com/736x/fd/68/b3/fd68b30b0ab8466d2f804ad71321b37a.jpg",
                            caption: "Awesome beard",
                            user_id: admin.id)
man_beards.darts << Dart.new(link_url: "http://www.pinterest.com/pin/88101736434031991/",
                            image_url: "http://media-cache-ec0.pinimg.com/736x/5c/5b/33/5c5b33043839cd18723017c7e489aa54.jpg",
                            caption: "Awesome beard",
                            user_id: admin.id)

man_beards.darts << Dart.new(link_url: "http://www.yesfans.com/showthread.php?54889-Goatee-Moustache-Beard-Muttonchops!-!/page3",
                            image_url: "http://3.bp.blogspot.com/_4B6BR9aWHAk/SH2ILGmbNQI/AAAAAAAAAaQ/NwS1iFsSfCw/s400/World%27s%2BLargest%2BBeard%2BMen%2B5.jpg",
                            caption: "Awesome beard",
                            user_id: admin.id)

man_beards.darts << Dart.new(link_url: "http://bravoinkburn.tumblr.com/post/56335744470",
                            image_url: "http://media-cache-ak0.pinimg.com/736x/66/90/e1/6690e1e24336160fee5fe490cbfad8fa.jpg",
                            caption: "Awesome beard",
                            user_id: admin.id)
man_beards.darts << Dart.new(link_url: "http://media-cache-cd0.pinimg.com/originals/39/2a/d9/392ad93235319552ec73e3f030296050.jpg",
                            image_url: "http://media-cache-cd0.pinimg.com/736x/39/2a/d9/392ad93235319552ec73e3f030296050.jpg",
                            caption: "Awesome beard",
                            user_id: admin.id)
man_beards.darts << Dart.new(link_url: "http://media-cache-ec0.pinimg.com/originals/4e/69/87/4e69876ebf9e566b2f400a6968b0d11e.jpg",
                            image_url: "http://media-cache-ec0.pinimg.com/736x/4e/69/87/4e69876ebf9e566b2f400a6968b0d11e.jpg",
                            caption: "Awesome beard",
                            user_id: admin.id)
man_beards.darts << Dart.new(link_url: "http://media-cache-cd0.pinimg.com/originals/a0/1e/8f/a01e8f6f06d97415d6532da88f58317e.jpg",
                            image_url: "http://media-cache-cd0.pinimg.com/736x/a0/1e/8f/a01e8f6f06d97415d6532da88f58317e.jpg",
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

steaks.darts << Dart.new(link_url: "http://www.pinterest.com/pin/128634133080049915/",
                            image_url: "http://media-cache-ak0.pinimg.com/736x/10/59/0f/10590f77a0e7401e6016e4adb6c5658a.jpg",
                            caption: "Best Steak",
                            user_id: admin.id)

steaks.darts << Dart.new(link_url: "http://www.pinterest.com/pin/215469163392122421/",
                            image_url: "http://media-cache-ec0.pinimg.com/736x/d9/60/3a/d9603a08feab68e7c830065a485cc8b3.jpg",
                            caption: "Best Steak",
                            user_id: admin.id)

steaks.darts << Dart.new(link_url: "http://www.pinterest.com/pin/257057091204400705/",
                            image_url: "http://media-cache-ec0.pinimg.com/736x/4b/41/9e/4b419e4340ccd462a2e976feed868a06.jpg",
                            caption: "Best Steak",
                            user_id: admin.id)

steaks.darts << Dart.new(link_url: "http://www.pinterest.com/pin/211598882465595920/",
                            image_url: "http://media-cache-ak0.pinimg.com/736x/54/79/0f/54790ff20740f4736b094b5738e2c7a1.jpg",
                            caption: "Best Steak",
                            user_id: admin.id)

steaks.darts << Dart.new(link_url: "http://media-cache-ec0.pinimg.com/originals/3a/08/bf/3a08bfb0b5741b08df7f480f4b8d0047.jpg",
                            image_url: "http://media-cache-ec0.pinimg.com/736x/3a/08/bf/3a08bfb0b5741b08df7f480f4b8d0047.jpg",
                            caption: "Best Steak",
                            user_id: admin.id)
steaks.darts << Dart.new(link_url: "http://whatkatieate.blogspot.com/2010/12/wooohooooo-here-we-go-folks-merry.html",
                            image_url: "http://media-cache-ak0.pinimg.com/736x/e0/71/d3/e071d3b9d78bf9d56c0b81aa665453e1.jpg",
                            caption: "Best Steak",
                            user_id: admin.id)
steaks.darts << Dart.new(link_url: "http://www.bbqcenter.nl/product/310397/category-211635-kookboeken/de-perfecte-steak.html",
                            image_url: "http://media-cache-ak0.pinimg.com/736x/fd/36/fb/fd36fb8c020e0b190478b4739340b0cc.jpg",
                            caption: "Best Steak",
                            user_id: admin.id)
steaks.darts << Dart.new(link_url: "http://thespinningplate.com/2010/05/07/why-eat-meat/#more-989",
                            image_url: "http://media-cache-ec0.pinimg.com/736x/b2/ef/f9/b2eff9d876b2ed2c27724ff5b9b71f4e.jpg",
                            caption: "Best Steak",
                            user_id: admin.id)
steaks.darts << Dart.new(link_url: "http://osuchrebekah5af14.tumblr.com/",
                            image_url: "http://media-cache-ec0.pinimg.com/736x/d4/52/a4/d452a4b7bb0af44ffb9e37257ecf1d60.jpg",
                            caption: "Best Steak",
                            user_id: admin.id)
steaks.darts << Dart.new(link_url: "http://blog.hudsonmadeny.com/?p=1860",
                            image_url: "http://media-cache-ak0.pinimg.com/736x/54/79/0f/54790ff20740f4736b094b5738e2c7a1.jpg",
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
cigars.darts << Dart.new(link_url: "http://www.pinterest.com/pin/155937205820972949/",
                            image_url: "http://media-cache-ak0.pinimg.com/736x/b1/49/19/b149194a2737828013c0126777a6b4ba.jpg",
                            caption: "Nice Cigar",
                            user_id: admin.id)
cigars.darts << Dart.new(link_url: "http://www.pinterest.com/pin/96475616987950702/",
                            image_url: "http://media-cache-ak0.pinimg.com/736x/5b/fc/7f/5bfc7f0d33f2bc92a3fe80fe25245e89.jpg",
                            caption: "Nice Cigar",
                            user_id: admin.id)
cigars.darts << Dart.new(link_url: "http://media-cache-ec0.pinimg.com/originals/ad/85/c1/ad85c1d505b105a5ae32d143a074b03f.jpg",
                            image_url: "http://media-cache-ec0.pinimg.com/736x/ad/85/c1/ad85c1d505b105a5ae32d143a074b03f.jpg",
                            caption: "Nice Cigar",
                            user_id: admin.id)
cigars.darts << Dart.new(link_url: "http://media-cache-ec0.pinimg.com/originals/24/fb/64/24fb64c2d5b27b584ab647c4c11d482e.jpg",
                            image_url: "http://media-cache-ec0.pinimg.com/736x/24/fb/64/24fb64c2d5b27b584ab647c4c11d482e.jpg",
                            caption: "Nice Cigar",
                            user_id: admin.id)
cigars.darts << Dart.new(link_url: "http://www.pinterest.com/pin/307441112032786494/",
                            image_url: "http://media-cache-ak0.pinimg.com/736x/58/f6/e7/58f6e7eb23f26b693dbe1de75d5c4b59.jpg",
                            caption: "Nice Cigar",
                            user_id: admin.id)
cigars.darts << Dart.new(link_url: "http://2.bp.blogspot.com/-gdqsozu9YwU/UUuCkdhmjxI/AAAAAAAABKI/PxemsZ8X_zo/s1600/P1040113.JPG",
                            image_url: "http://media-cache-ec0.pinimg.com/736x/c5/a3/2c/c5a32ce6a08ce810f45dd8687dd172e5.jpg",
                            caption: "Nice Cigar",
                            user_id: admin.id)
cigars.darts << Dart.new(link_url: "http://media-cache-ec0.pinimg.com/originals/10/16/69/101669beb8dd32e2b4aeb46b347accbb.jpg",
                            image_url: "http://media-cache-ec0.pinimg.com/736x/10/16/69/101669beb8dd32e2b4aeb46b347accbb.jpg",
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
razors.darts << Dart.new(link_url: "http://www.pinterest.com/pin/430445676855624405/",
                            image_url: "http://media-cache-ec0.pinimg.com/736x/b9/73/bf/b973bf3ca296d8cf708b7138cec7db3e.jpg",
                            caption: "Sweet Razor",
                            user_id: admin.id)
razors.darts << Dart.new(link_url: "http://www.pinterest.com/pin/487303622151399227/",
                            image_url: "http://media-cache-ec0.pinimg.com/736x/f4/7d/56/f47d56ae62cf79c4db8af30d6a949c6a.jpg",
                            caption: "Sweet Razor",
                            user_id: admin.id)
razors.darts << Dart.new(link_url: "http://www.pinterest.com/pin/487303622151399227/",
                            image_url: "http://media-cache-ec0.pinimg.com/736x/f4/7d/56/f47d56ae62cf79c4db8af30d6a949c6a.jpg",
                            caption: "Sweet Razor",
                            user_id: admin.id)
razors.darts << Dart.new(link_url: "http://www.pinterest.com/pin/88101736434031991/",
                            image_url: "http://media-cache-ak0.pinimg.com/736x/0c/cf/ca/0ccfcac68709b67d534730242afe50d8.jpg",
                            caption: "Sweet Razor",
                            user_id: admin.id)
razors.darts << Dart.new(link_url: "http://www.neatorama.com/2013/09/28/Straight-Razor-Ruler/#!ktNHq",
                            image_url: "http://media-cache-ec0.pinimg.com/736x/1c/db/a8/1cdba816168121a1d81f268adfd2c310.jpg",
                            caption: "Sweet Razor",
                            user_id: admin.id)
razors.darts << Dart.new(link_url: "http://media-cache-ak0.pinimg.com/originals/9a/ba/06/9aba061d12d98d26638b8d17e076d251.jpg",
                            image_url: "http://media-cache-ak0.pinimg.com/736x/9a/ba/06/9aba061d12d98d26638b8d17e076d251.jpg",
                            caption: "Sweet Razor",
                            user_id: admin.id)
razors.darts << Dart.new(link_url: "http://blog.thestylebuff.com/post/16459598539/spanish-straight-razor",
                            image_url: "http://media-cache-ec0.pinimg.com/736x/79/01/6c/79016cb526505148e46f2817346f284d.jpg",
                            caption: "Sweet Razor",
                            user_id: admin.id)

admin.boards << Board.new(name: "Whisky", description: "Fine Whisky")
whisky = Board.find_by(name: "Whisky")

whisky.darts << Dart.new(link_url: "http://www.thedailymeal.com/5-american-single-malts-check-out",
                            image_url: "http://media-cache-ak0.pinimg.com/736x/2e/13/2b/2e132bc88f0c9e1ddef906e0de7aeedb.jpg",
                            caption: "Fine Whisky",
                            user_id: admin.id)
whisky.darts << Dart.new(link_url: "http://www.johnnyfoxdesign.com/rarest.html",
                            image_url: "http://media-cache-ak0.pinimg.com/736x/37/64/94/37649494a04f41ccef1915b6d23fdc68.jpg",
                            caption: "Fine Whisky",
                            user_id: admin.id)
whisky.darts << Dart.new(link_url: "http://media-cache-ak0.pinimg.com/originals/66/ac/2a/66ac2a63305f907369903dc1663efa78.jpg",
                            image_url: "http://media-cache-ak0.pinimg.com/736x/66/ac/2a/66ac2a63305f907369903dc1663efa78.jpg",
                            caption: "Fine Whisky",
                            user_id: admin.id)
whisky.darts << Dart.new(link_url: "http://ohpioneer.com/post/13203061531",
                            image_url: "http://media-cache-ec0.pinimg.com/736x/6e/f2/21/6ef22135b706eaba8e727866aa9efcec.jpg",
                            caption: "Fine Whisky",
                            user_id: admin.id)
whisky.darts << Dart.new(link_url: "http://www.pinterest.com/pin/7810999323614065/",
                            image_url: "http://media-cache-ec0.pinimg.com/736x/16/54/4b/16544b860a383da5a8bb0a4526f2cb5d.jpg",
                            caption: "Fine Whisky",
                            user_id: admin.id)
whisky.darts << Dart.new(link_url: "http://media-cache-ak0.pinimg.com/originals/f4/77/db/f477dbdf4b7a2a9f7ba0ac11f23a146d.jpg",
                            image_url: "http://media-cache-ak0.pinimg.com/736x/f4/77/db/f477dbdf4b7a2a9f7ba0ac11f23a146d.jpg",
                            caption: "Fine Whisky",
                            user_id: admin.id)


admin.boards << Board.new(name: "Random", description: "Other")
random = Board.find_by(name: "Random")

random.darts << Dart.new(link_url: "http://uncrate.com/stuff/leatherman-super-tool-300/",
                            image_url: "http://uncrate.com/p/2009/08/leatherman-super-tool.jpg",
                            caption: "Random",
                            user_id: admin.id)

