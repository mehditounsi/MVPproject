DROP DATABASE IF EXISTS recipe_data;

CREATE DATABASE recipe_data;

USE recipe_data;

CREATE TABLE recipes (
  id int NOT NULL AUTO_INCREMENT,
  title varchar(50) NOT NULL,
  imageUrl varchar(255) NOT NULL,
  body TEXT NOT NULL,
  Likes int NOT NULL,
  PRIMARY KEY (ID)
);

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/


INSERT INTO recipes (title,imageUrl,body,Likes) values ("Southern Collard Greens","https://food.fnr.sndimg.com/content/dam/images/food/fullset/2010/10/26/1/GI0905_Collards_s4x3.jpg.rend.hgtvcom.826.620.suffix/1503689347136.jpeg","Equipment
Large Pot
Ingredients
6 small bunches collard greens
1 extra large smoked ham hock make sure it is meaty!
2 tbsp granulated sugar
1 tbsp bacon grease
1 tbsp seasoned salt
2 tsp worcheshire sauce
2 tsp apple cider vinegar
1 tsp crushed red pepper flakes you can go down on this to 1/2 teaspoon if you like less heat.
1/4 tsp garlic powder
1/4 tsp paprika
1/4 cup finely chopped onion
Instructions
Start by pulling and tearing greens away from stems. Take a hand full of greens, roll them up and cut the rolls horizontally into small pieces. We personally remove the stems but this is a personal decision.
Next, add greens to empty clean sink and wash them removing all grit, sand and debris thoroughly with cold water until water becomes clear.
Next rinse the ham hock very well then add to a large pot along with enough water to fully submerge the ham hock then cover with a lid. Cook over medium high heat for about 45 minutes or until ham hock is near being tender.
Once ham hock is almost tender, add greens and about 4-5 additional cups of water or enough to just barely cover greens to the pot. This will become your pot likker.
Add along the rest of the ingredients to the pot and cook while covered for at least 2 hours or until completely tender. Most water should have evaporated by this point just having enough to barely cover the greens.")
INSERT INTO recipes (title,imageUrl,body,Likes) values ("Sausage Gravy","https://www.rockrecipes.com/wp-content/uploads/2020/03/Southern-Sausage-Gravy-biscuts-and-scrambled-eggs-in-a-cast-iron-pan.jpg","You won’t get far on a Southern breakfast table without gravy! Hearty and robust, gravy has a way of soothing the soul and filling the belly like no other. Buttermilk Kitchen’s Sawmill Gravy is smoky, peppery and unique; it’s become my go-to recipe and will continue to be for years to come.

Here’s what you’ll need to make gravy gold:

Minced Onion & Garlic– both add depth, aroma and a slight sweetness. Because this gravy is quite thick and chunky, there’s no need to worry about mincing super finely.
Unsalted Butter– it’s imported to use unsalted butter in this recipe. Using salted butter will only add unwanted sodium and make for a salty gravy.
Red Chili Flakes– don’t have any on hand? Try using a couple dashes of cayenne instead. Not a fan of heat? Use a bit of sweet paprika.
Ground Pork Country Sausage– I highly recommend investing in freshly ground, high-quality sausage. Meat is the shining star in this gravy, so the quality of the pork will really determine the outcome.
Chicken Stock– stock adds body to the gravy without being too rich or overwhelming. Vegetable stock will work as well.
Heavy Cream– cream adds smooth, sweet richness. *mouth watering*
All-Purpose Flour– flour works as a thickener here. I wouldn’t suggest using anything other than all-purpose.
Ground Nutmeg– if possible, grate the nutmeg yourself. It’s worth it.
Tabasco– no tabasco on hand? Use your favorite hot sauce. Just a few dashes adds a great kick!
Kosher Salt & Fresh Cracked Pepper– there’s no other option for salt and pepper. Trust me.")
INSERT INTO recipes (title,imageUrl,body,Likes) values ("Homemade French Fries","https://food.fnr.sndimg.com/content/dam/images/food/fullset/2012/9/5/1/WU0306H_perfect-french-fries_s4x3.jpg.rend.hgtvcom.826.620.suffix/1589465976850.jpeg","HOW TO MAKE CRISPY SWEET POTATO FRIES
Garlic Butter Sweet Potato Fries have been a favorite of mine since I first shared this recipe almost 6 years ago. Spiced, garlicky and salty-sweet, these fries make for the absolute best side or snack! But, because they’re baked rather than fried, they’re not always as crispy as I prefer my fries to be.

Since posting the original recipe, I’ve picked up a few tricks to make sweet potato fries a bit crispier. Believe me, you’re gonna wanna tuck these tips in your culinary belt!

SLICE THE FRIES THINLY
try your best to cut fries that are between ¼” – ½” wide. Thin fries will cook more evenly and develop a crispier skin.

MIX OIL AND BUTTER
Butter and garlic work together like magic, it’s undeniable. But, if you’re going for crispy, oil is your best friend. Replace the 1tbsp of butter with an equal amount of olive or vegetable oil. Top with garlic butter.

ADD CORNSTARCH
if you’re looking for next level crisp, try adding a teaspoon of cornstarch before drizzling on the butter (or oil). Toss the fries in a large bowl to evenly coat them with the starch then proceed with the recipe.

DIVIDE BETWEEN TWO PANS
overcrowded fries steam each other and never get crispy! Be sure that each fry is lying flat against the pan, not piled on top of one another. I find that spreading the fries on two baking sheets rather than one is the best method for those getting crisp edges.",0)
INSERT INTO recipes (title,imageUrl,body,Likes) values ("Southern Hush Puppies","https://www.thespruceeats.com/thmb/YOtVR-PiVTnxW0_LmDgVw1AqaOU=/3516x1978/smart/filters:no_upscale()/hush-puppies-102014-57e16d433df78c9ccef34413.jpg","
Wanna know how to whip up a batch of hush puppies like a pro? Well, I’ve got the insider tips that make for the most flavorful, well-cooked puppies around!

These are my top 3 secrets for a great hushpuppy batter:

Don’t Overmix. Overworking the batter will make for dense, tough hush puppies. Stir the batter only up until the dry ingredients become moist.
Add Sugar. When added to a batter, sugar encourages browning and deepens flavor. Even if you’re not a fan of a sweeter cornbread, I would encourage you to still add the sugar.
Rest the Batter. Allowing the batter to sit at room temperature for about 10 minutes is key! During that time the batter will set and thicken.
Warning: Freshly cooked Hush Puppies are delightful but, they can be dangerously hot when they come out of the fryer. To avoid injury, please wait at least 5 minutes before popping one in your mouth.",0)
INSERT INTO recipes (title,imageUrl,body,Likes) values ("Mississippi Sin Dip","https://i2.wp.com/homemadeinterest.com/wp-content/uploads/2016/09/Mississippi-Sin-Dip_featured.jpg","The most important thing to consider for your Friday Fish Fry is the fish quality.  While you can add lots of spices and flavors, if the fish isn’t fresh, it won’t taste good at all!  Always begin with fresh fish.  I always start by smelling the fish.  If you smell something pungent, that is not a good quality of fish.  If you are buying a whole fish, it is important to check the eyes.  They should not look sunken.  If they do, the fish is probably not fresh.  The skin will also look brighter resulting in a fresher fish.

Depending on what types of fish you select, there are many ways you can fry it.  I personally love catfish fillets for along with other options like shrimp.  Our method of choice is usually the deep fryer.  If you don’t have a deep fryer, you can also fry your fish in a skillet like a cast iron or in a deep pot.  Just add a large amount of oil to make sure the fish can be totally submerged to fry to a golden brown on all sides.  Oils you can use are peanut oil, canola and vegetable.  I usually wouldn’t suggest olive oil because the flavor is too strong and will take away from the fish.

One trick for testing your oil is using a wooden spoon.  Simply insert the wooden spoon into the oil and if it begins to bubble, it is ready!

FISH FRY BATTER",0)
INSERT INTO recipes (title,imageUrl,body,Likes) values ("Baked Macaroni and Cheese","https://food.fnr.sndimg.com/content/dam/images/food/fullset/2011/6/6/0/EA1E10_Baked-Macaraoni-and-Cheese_s4x3.jpg.rend.hgtvcom.826.620.suffix/1382540004120.jpeg","This southern style baked macaroni and cheese is quite delightful and made with three cheeses:

Sharp Cheddar
Manchego
Gruyere
These really give it a lovely depth of flavor. Sharp cheddar is a conventional cheese choice and is often used in many macaroni and cheese recipes.

The other two cheeses are a little more unique. Manchego is a hard, sharp Spanish sheep’s milk cheese that has a buttery nutty taste that melts well and is perfect for macaroni and cheese.

Gruyere is a sweet, yet slightly salty cheese that originates from Sweden. As it ages, the taste of gruyere changes from creamy and nutty to more earthy and complex. This combination of cheeses gives this mac and cheese recipe a delicious and distinct taste that you’ll love!",0)
INSERT INTO recipes (title,imageUrl,body,Likes) values ("Slow Cooker Beef Brisket","https://food.fnr.sndimg.com/content/dam/images/food/fullset/2016/3/29/0/FNK_Slow-Cooker-Brisket_s4x3.jpg.rend.hgtvcom.826.620.suffix/1459268342761.jpeg","Nothing beats nutrient-rich beef raised with care by amazing farmers and ranchers.  When looking for beef ribs, we want to look for something super meaty. I like going to the butcher to grab my beef ribs for the grill.  If you want short ribs, I have plenty of recipes for those where you braise the meat to really break it down. For the grill, you want to ask the butcher for the meaty kind, like a small rack of beef short ribs for something like these.
MARINADE VERSUS SPICE RUB
How To Cook Beef Ribs 4 277x416 - How to Cook Beef Ribs (Beef Ribs Recipe)
This comes down to preference.  For beef ribs, I love a spice rub because it lets beef’s one-of-a-kind flavor shine, but you can’t go wrong with either one. I have some tips and options below depending on which camp you fall into.
Marinades help break down the beef and add flavor throughout.  This is fantastic. If you are a marinade person, grab one of those and go for it.
Like I said before, I love a good spice rub.  You can either pick up one at the store or make your own blend featuring your favorite flavors.  I love playing with jerk seasoning, Cajun spice, or coming up with something on the go.   You can honestly add salt and pepper, and they will still be amazing.  I like to let the rub sit on the ribs for an hour before putting them on the grill.  Also make sure you pair these with my delicious Southern Baked Beans!
How To Cook Beef Ribs 5 570x380 - How to Cook Beef Ribs (Beef Ribs Recipe)
Patience is key.  It’s going to take a few hours to make the ribs as tender as possible, but these are worth the wait.  The slow cooking process allows the meat to get more tender and creates the perfect texture. It’s almost like a braise without the liquid.  
You’ll cook these ribs to perfection by placing them bone side down over indirect heat. When finished cooking, your ribs should reach an internal temperature of 205 °F ..  ",0)
INSERT INTO recipes (title,imageUrl,body,Likes) values ("Cooker Beef Stroganoff","https://images-gmi-pmc.edge-generalmills.com/8d41619a-295f-4460-9cc2-0acef17ae53c.jpg","If you’ve ever chewed your way through dry, overcooked beef, you’re going to LOVE this Beef Stroganoff recipe! Just two simple rules for juicy, tender beef:using the right cut; and
the 30 Second Sear ( <– PS I totally made up this name)
The first rule is fairly self explanatory – for a quick cooking recipe like Beef Stroganoff, you can’t get away with using a better value tough cut like chuck beef.

Sure, you could do a slow cooker stroganoff.

But if you want to make this retro classic the way it’s intended and to experience all that Beef Stroganoff is when the beef is tender, juicy perfection, then there’s no getting around the fact that you will need a good quality steak that’s nicely marbled with fat.",0)
INSERT INTO recipes (title,imageUrl,body,Likes) values ("Italian Beef Sandwiches","https://amazingribs.com/files/articles/hero/beef-and-bison-recipes/italian-beef.jpg","A typical Italian beef sandwich is made with sirloin however it wouldn’t hold up well in the slow cooker. I’ve opted for chuck roast as it’s tender and flavorful. A rump roast works well too!


The beef is seared on both sides to add flavor to the recipe and then it slow cooks until buttery and fork tender and is shredded (similar to pulled pork).Seasonings: This recipe uses a packet of Italian dressing mix for a bit of zest and tang. The peppers I use are sliced pepperoncinis, if you can’t find sliced, whole will work too. They add a delicious, salty, briny flavor and just a hint of heat but don’t make this sandwich too spicy.",0)