citra = { name: "Citra", category: "Hops", amount: 225, unit:"Grams" }

yeast = { name: "Wyeast 1056 Pale", category: "Yeast", amount: 1, unit: "Package" }

pilsner = { name: "Pilsner", category: "Malt", amount: 3, unit: "Kilograms" }

munich = { name:"Munich", category: "Malt", amount: 3, unit: "Kilograms" }

perle =  {name: "Perle", category: "Hops", amount: 20, unit: "Grams" }

propino = { name: "Propino Pale" , category: "Malt", amount: 5.6, unit: "Kilograms" }

caramalt = { name: "Premium English Carmalt", category: "Malt", amount: 0.6, unit: "Kilograms" }

bramling = { name: "Bramling Cross", category: "Hops", amount: 10, unit: "Grams" }

gold = {name: "First Gold", category: "Hops", amount: 10 , unit: "Grams" }

expale = {name: "Extra Pale", category: "Malt", amount: 7.3, unit: "Kilograms" }

wheat = { name: "Wheat", category: "Malt", amount: 36, unit: "Kilograms" }

smoked = { name: "Smoked Malt", category: "Malt", amount: 53, unit: "Kilograms" }

magnum = { name: "Magnum", category: "Hops", amount: 36, unit: "Grams" }

cascade = { name: "Cascade", category: "Hops", amount: 12, unit: "Grams" }

amarillo = { name: "Amarillo", category: "Hops", amount: 6.5, unit: "Grams" }

centennial = { name: "Centennial", category: "Hops", amount: 7.5, unit: "Grams" }
 
chinook = { name: "Chinook", category: "Hops", amount: 7.5, unit: "Grams" }

enigmahop = { name:"Enigma" , category: "Hops", amount: 47.5, unit: "Grams" }

galena = { name: "Galena", category: "Hops", amount: 12.5, unit: "Grams" }

hercules = {name: "Hercules", category: "Hops", amount: 12.5, unit:"Grams" }

bavaria = { name: "Manarina Bavaria", category: "Hops", amount: 6, unit: "Grams" }

cloudberries = { name: "Cloudberries", category: "Hops", amount: 100, unit: "Grams" }

columbus = { name: "Columbus", category: "Hops", amount: 34, unit: "Grams" }

simcoe = { name: "Simcoe", category: "Hops", amount: 12.5, unit: "Grams" }

chocolate = { name: "Chocolate", category: "Malt", amount: 6, unit: "Kilograms" }

pale = { name: "Pale", category: "Malt", amount: 3.38, unit: "Kilograms" }

flaked = { name: "Flaked Oats", category: "Malt", amount:1, unit: "Kilograms" }

barley = { name: "Roasted Barley", category: "Malt", amount: 2, unit: "Kilograms" }

eugene = { name: "Willamette", category: "Hops", amount: 75, unit: "Grams" }

Beer.create(name:"Black Dog", boil_volume: 25, mash_instruct:"Mash Temp: 68 C for 90 min.", fermentation_instruct: "Ferment at: 19 C", description:"5.5% dark wheat stout with Columbus, Simcoe and Chinook and of course plenty of dry hopping action.", abv:5.5, ibu:60, volume:20, food_pairing:"Spicy chicken and chilli verde sauce enchiladas, Smoked chorizo and strong cheese board", tips:"By soaking some oak chips in bourbon, then steeping in the beer, you not only get an authentic bourbon taste - the beer will also gain ABV! Add salt to taste but beware - too much will totally ruin the balance of the beer.")
    black_dog = Beer.find_by(name:"Black Dog").ingredients
        black_dog << Ingredient.create(expale)
        black_dog << Ingredient.create(caramalt)
        black_dog << Ingredient.create(columbus)
        black_dog << Ingredient.create(simcoe)
        black_dog << Ingredient.create(chinook)
        black_dog << Ingredient.create(yeast)

Beer.create(name:"Make Earth Great Again", boil_volume:25, mash_instruct:"Mash Temp: 65 C for 60 min.", fermentation_instruct:"Ferment at: 23 C.", description:"In protest against the potential withdrawal of the USA from the Paris agreement, we brewed a saison (which ferments at high temperatures) with melted ice caps (glacier water) and cloudberries (an Arctic berry).", abv:7.5, ibu:35, volume:20, food_pairing:"Raspberry Souffle, Oysters With a Chili And Dill Sauce", tips:"You can buy cloudberry jam and add that instead. The pectin in the jam is not ideal and will form a haze but that can be forgiven in a saison.")
    mega = Beer.find_by(name:"Make Earth Great Again").ingredients
        mega << Ingredient.create(pilsner)
        mega << Ingredient.create(amarillo)
        mega << Ingredient.create(bavaria)
        mega << Ingredient.create(cloudberries)
        mega << Ingredient.create(yeast)

Beer.create(name:"Old World Russian Imperial Stout", boil_volume:25, mash_instruct:"Mash Temp: 64 C for 90 min.", fermentation_instruct:"Ferment at: 19 C.", description:"This Old World Stout perfectly recreates the export stouts of years gone by; brewed to imperial strength to avoid freezing during its journey across the Baltic Sea to snowy Moscow. Full bodied with huge chocolate, coffee and roast flavours, this imperial stout employs a variety of hops to add enough bitterness and hop complexity to balance the huge malt sweetness and rich mocha and molasses flavours.", abv:9.5, ibu:80, volume:20, food_pairing:"Seared steak with a peppercorn sauce, Strong blue cheese and oatcakes, Chocolate cheesecake", tips:"Add the chocolate malt after the mash is complete, at the start of sparging. This will extract flavour and colour, but will prevent the extraction of harsh tannins into the wort.")
    owris = Beer.find_by(name: "Old World Russian Imperial Stout").ingredients
        owris << Ingredient.create(expale)
        owris << Ingredient.create(caramalt)
        owris << Ingredient.create(chocolate)
        owris << Ingredient.create(magnum)
        owris << Ingredient.create(galena)
        owris << Ingredient.create(hercules)
        owris << Ingredient.create(cascade)
        owris << Ingredient.create(yeast)

Beer.create(name:"Enigma Hopped IPA", boil_volume:25, mash_instruct:"Mash Temp: 65 for 30 min.", fermentation_instruct:"Ferment at: 19 C.", description:"A cheeky play with a new hop on the pilot kit. Expect notes of redcurrant, melon and citrus. An intriguing possibility for the future.", abv:5, ibu:50, volume:20, food_pairing:"Enigma has a very high alpha acid so be careful not to over do the bittering hops.", tips:"The addition of the acidulated malt tweaks the pH down to aid the yeast fermentation, and helps to creates the crisp lager bite. Be careful not to use more than 10% in any grist, it will turn your mash into jelly!")
    enigma = Beer.find_by(name:"Enigma Hopped IPA").ingredients
        enigma << Ingredient.create(propino)
        enigma << Ingredient.create(enigmahop)
        enigma << Ingredient.create(yeast)

Beer.create(name:"Vagabond Pilsner", boil_volume:25, mash_instruct:"Mash Temp: 65 C for 75 min.", fermentation_instruct:"Ferment at: 9 C.", description:"Take the thirst-quenching crispness of a German Pilsner and combine it with lemon and honey to produce a rewarding modern twist on a beer classic.", abv:4.5, ibu:55, volume:20, food_pairing:"Jamaican jerk chicken, Hot dog with grilled onions and spicy ketchup, Shortbread and raspberry jam thumbprint cookie.", tips:"The addition of the acidulated malt tweaks the pH down to aid the yeast fermentation, and helps to creates the crisp lager bite. Be careful not to use more than 10% in any grist, it will turn your mash into jelly!")
    vagabond =  Beer.find_by(name: "Vagabond Pilsner").ingredients
        vagabond << Ingredient.create(pale)
        vagabond << Ingredient.create(caramalt)
        vagabond << Ingredient.create(centennial)
        vagabond << Ingredient.create(amarillo)
        vagabond << Ingredient.create(yeast)

Beer.create(name:"Ship Wreck", boil_volume:25, mash_instruct:"Mash Temp: 65 C for 75 min.", fermentation_instruct:"Ferment at: 21 C.", description:"This mezcal-inspired brew is the shipwrecked remains of a collaboration brewed with former craft brewers Ballast Point. Brewed to encapsulate the flavours of mezcal, this beer smoulders with peaty and light woody notes, as well as intense fruity character." , abv:13.8, ibu:60, volume:20, food_pairing:"Shrimp aguachile, Mezcal marinated sirloin steak, Basil panna cotta with strawberries", tips:"Nail your colours to the mother fucking mast – independence or death.")
    wreck = Beer.find_by(name:"Ship Wreck").ingredients
        wreck << Ingredient.create(expale)
        wreck << Ingredient.create(wheat)
        wreck << Ingredient.create(smoked)
        wreck << Ingredient.create(magnum)
        wreck << Ingredient.create(citra)
        wreck << Ingredient.create(amarillo)
        wreck << Ingredient.create(yeast)

Beer.create(name:"Small Batch: 90 Shilling", boil_volume:25, mash_instruct:"Mash Temp: 54 C for 75 min.", fermentation_instruct:"Ferment at: 19 C.", description:"A malt-forward Scotch ale with a complex but mellow mix of toast crust, caramel, hints of cocoa, and a light hop spiciness." , abv:5.3, ibu:25, volume:20, food_pairing:" Game Terrine, Barbeque-griddled Poussin, Clootie Dumpling", tips:"Pre-mix your malts to keep the conversion of starches to sugars even across the mash and give you a more uniform grain bed for lautering and sparging. This is a lot less labour intensive than manually stirring your speciality malts into your mash tun.")
    shilling = Beer.find_by(name:"Small Batch: 90 Shilling").ingredients
        shilling << Ingredient.create(propino)
        shilling << Ingredient.create(caramalt)
        shilling << Ingredient.create(cascade)
        shilling << Ingredient.create(columbus)
        shilling << Ingredient.create(yeast)

Beer.create(name:"Prototype Helles", boil_volume:25, mash_instruct:"Mash Temp: 65 C for 75 min.", fermentation_instruct:"Ferment at: 12 C.", description:"Our spin on one-of the most popular beer styles ever conceived. A celebration of light, bready malt, with toasty hints and soft bitterness." , abv:4.9, ibu:18, volume:20, food_pairing:"Salt beef bagel with mustard & pickles, Pork belly ramen, Beetroot and goats cheese salad", tips:"Lagering is key to traditional German styles. A Helles lives or dies on its light, bready & toasty malt flavours – give them months to develop (at cold temperatures) for an outstanding Helles.")
    helles = Beer.find_by(name:"Prototype Helles").ingredients
        helles << Ingredient.create(pilsner)
        helles << Ingredient.create(perle)
        helles << Ingredient.create(yeast)

Beer.create(name:"Opaque Jake Vermont IPA", boil_volume:25, mash_instruct:"Mash Temp: 66 C for 20 min.", fermentation_instruct:"Ferment at: 21 C.", description: "Our first single-hop Vermont IPA; all the flavour in this beer comes from a combination of Citra's naturally complex flavour profile, the yeast-produced esters, and the biotransformation of the hop oils by its contact with the yeast." , abv:7.2, ibu:20, volume:20, food_pairing:"Steak, chicken, Lobster salad", tips:"Pectin powder can easily be sourced and is an easy alternative for a homebrewer to produce murky beer if you don’t have access to a low flocculating yeast.")
    jake = Beer.find_by(name:"Opaque Jake Vermont IPA").ingredients
        jake << Ingredient.create(pale)
        jake << Ingredient.create(flaked)
        jake << Ingredient.create(wheat)
        jake << Ingredient.create(citra)
        jake << Ingredient.create(yeast)

Beer.create(name:"Libertine Porter", boil_volume:25, mash_instruct:"Mash Temp: 68 C for 35 min.", fermentation_instruct:"Ferment at: 18 C.", description: "An avalanche of cross-continental hop varieties give this porter a complex spicy, resinous and citrusy aroma, with a huge malt bill providing a complex roasty counterpoint. Digging deeper into the flavour draws out cinder toffee, bitter chocolate and hints of woodsmoke." , abv:6.1, ibu:45, volume:20, food_pairing:"Blue cheese hamburger, glazed shortribs, chocolate cake", tips:"Mash in at a higher temperature to leave more unfermentable sugars in the wort. This gives the beer a sweeter porter profile.")
    libertine = Beer.find_by(name: "Libertine Porter").ingredients
        libertine << Ingredient.create(expale)
        libertine << Ingredient.create(caramalt)
        libertine << Ingredient.create(barley)
        libertine << Ingredient.create(wheat)
        libertine << Ingredient.create(flaked)
        libertine << Ingredient.create(smoked)
        libertine << Ingredient.create(columbus)
        libertine << Ingredient.create(galena)
        libertine << Ingredient.create(eugene)
        libertine << Ingredient.create(simcoe)
        libertine << Ingredient.create(yeast)

