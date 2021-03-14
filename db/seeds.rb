@lost_isles = Continent.create!(name: "Lost Isels", description: "Heart of the campaign, look up history of the lost isles for more info")

@atonast = @lost_isles.kingdoms.create!(name: "Athonast", continent: @lost_isles, description: "look up history of Athonast for more information", location: "main body of the lost isles")

@northern_mountains = @atonast.regions.create!(name: "northern mountains", discription: "often considered the capital district it is thhhome of the capital, and the most northern region of athonast", location: "northern western portion of the kingdom", biome: "low mountains to the west, high mountains to the east")
@eastern_mountains = @atonast.regions.create!(name: "Eastern mountain range", discription: "the masive mountains in the far east of Athonast are home to masive anciant mines as well as impresive cities carved out of solid stone", location: "east southeast of the kingdom", biome: "high mountains and harsh weather")
@capital_road = @atonast.regions.create!(name: "capital road", discription: "capital road is an anchian highway rinning form the sothern most tip of the continant to the capital", location: "bisects Athonast but more westerly", biome: "varied")
@south_plains = @atonast.regions.create!(name: "south plains", discription: "the south lowlands of the contenant", location: "sothern third of Athonast", biome: "grassland, forest, hills")

@city_of_the_keepers = @northern_mountains.cities.create!(name: "City of the Keepers", discription: "Originaly known as 'The City of the King' it was change after the last kings departure. It is the captial of the Athonast", location: "north western portion of the northern mountians, along the coast")

@evergreen = @south_plains.cities.create!(name: "Evergreen", discription: "a decent size city, whoes original export was lumber bit is also now a traiding crossroads", location: "North western portion of the South plains")

@city_center = @evergreen.district.create!(name: "City Center", discription: "a large central ring with bar, inns bathhouses etc. generally concidered the social center of the city", location: "inside the innermost walls of the city")
@business_district = @evergreen.district.create!(name: "Busness District", discription: "split into two sections, north business, and south business, the main highway runs through the center of the district ans most public comerce take place within", location: "runs alonthethe entire main road inside the city walls")

@dream_shop_inn = @city_center.shops.create!(name: "Dream Shop Inn", location: "South side of the city center, right off the main road", discription: "A quite simple inn with an attached stable")
@grog_n_gravel = @city_center.shops.create!(name: "Grog N Gravel", location: "North side of the city center, a little ways off of the main road", discription: "a roudy bar, with the cities only sanctioned public fighting pit (highly regulated of corse)")
@original_tap = @city_center.shops.create!(name: "Original Tap", location: "south side of the center", discription: "a more reputable bar known for its magical beer taps. they still surve out of the original kegs from when the bar was originally opened 136 years ago")
@tinker_top = @business_district.shops.create!(name: "Tinker Top", location: "North business, twords the center of town", discription: "A small trinket shop run by an elderly gnome")
