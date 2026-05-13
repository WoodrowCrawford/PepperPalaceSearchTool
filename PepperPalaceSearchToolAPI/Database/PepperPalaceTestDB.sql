CREATE SCHEMA `PepperPalaceTestDB`;

CREATE  TABLE `PepperPalaceTestDB`.food ( 
	pk_food_id           INT   NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	food_name            VARCHAR(60)       
 ) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE `PepperPalaceTestDB`.food COMMENT 'table that contains all the food';

ALTER TABLE `PepperPalaceTestDB`.food MODIFY pk_food_id INT   NOT NULL  AUTO_INCREMENT COMMENT 'the id of the food';

CREATE  TABLE `PepperPalaceTestDB`.sauce ( 
	pk_sauce_id          INT   NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	sauce_name           VARCHAR(100)       ,
	sauce_type           ENUM('salsa','seasoning','wing sauce','hot sauce','bbq','condiments','sauce')       ,
	heat_level           ENUM('None','Mild','Medium','Hot','X-Hot','Wild')       
 ) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE `PepperPalaceTestDB`.sauce COMMENT 'the sauce';

ALTER TABLE `PepperPalaceTestDB`.sauce MODIFY sauce_name VARCHAR(100)      COMMENT 'the name of the sauce';

ALTER TABLE `PepperPalaceTestDB`.sauce MODIFY heat_level ENUM('None','Mild','Medium','Hot','X-Hot','Wild')      COMMENT 'the heat level of the sauce';

CREATE  TABLE `PepperPalaceTestDB`.sauce_pairings ( 
	fk_sauce_id          INT   NOT NULL    ,
	fk_food_id           INT   NOT NULL    ,
	CONSTRAINT pk_sauce_pairings PRIMARY KEY ( fk_sauce_id, fk_food_id )
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE INDEX fk_sauce_pairings_food ON `PepperPalaceTestDB`.sauce_pairings ( fk_food_id );

ALTER TABLE `PepperPalaceTestDB`.sauce_pairings ADD CONSTRAINT fk_sauce_pairings_food FOREIGN KEY ( fk_food_id ) REFERENCES `PepperPalaceTestDB`.food( pk_food_id ) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `PepperPalaceTestDB`.sauce_pairings ADD CONSTRAINT fk_sauce_pairings_sauce FOREIGN KEY ( fk_sauce_id ) REFERENCES `PepperPalaceTestDB`.sauce( pk_sauce_id ) ON DELETE CASCADE ON UPDATE CASCADE;

INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 39, 'Faceshovels');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 40, 'Tacos');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 68, 'Tortilla Soup');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 69, 'South western Omelet');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 70, 'Chili');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 71, 'Pasta Sauce');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 72, 'Cream Cheese');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 73, 'Breakfast Burritos');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 74, 'Loaded Nachos');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 75, 'Burrito Bowl');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 76, 'Pita Chips');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 77, 'Naan & Cook with Chicken and Basmati Rice');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 78, 'Defrost a Driveway');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 79, 'Kick up Marinara');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 80, 'Spoon over Eggs');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 81, 'Chicken Bowl');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 82, 'Steak Burrito');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 83, 'Marinara Sauce');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 84, 'Pasta Dish');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 85, 'Fish Tacos');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 86, 'Grilled Shrimp');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 87, 'Top Tacos');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 88, 'Seafood');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 89, 'Shrimp');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 90, 'Spring Rolls');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 91, 'Fried Chicken');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 92, 'Wings');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 93, 'Chicken less Patty Sandwich');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 94, 'Fried Rice');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 95, 'Fried Calamari');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 96, 'Dumplings');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 97, 'Grilled Chicken');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 98, 'Marinade Pork');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 99, 'Tempeh');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 100, 'Burgers');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 101, 'Chicken Tenders');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 102, 'Nasal Napalm');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 103, 'Pretzels');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 104, 'Salads');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 105, 'Fries');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 106, 'Mayo');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 107, 'Salmon');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 108, 'Satay Sauce');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 109, 'Ribs');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 110, 'Pork');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 111, 'Chicken');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 112, 'Sweet Potatoes');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 113, 'Stir Fry');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 114, 'Egg Rolls');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 115, 'Grilled Meats');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 116, 'Baked Beans');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 117, 'BBQ Chicken Dip');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 118, 'Pulled Pork');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 119, 'Chicken Wings');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 120, 'BBQ Chicken Pizza');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 121, 'Dipping Sauce');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 122, 'Sliders');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 123, 'Meatloaf');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 124, 'Pasta');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 125, 'Pizza');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 126, 'Bratwurst');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 127, 'Mix with BBQ');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 128, 'Black Beans and Rice');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 129, 'Chicken bowl');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 130, 'Steak Tacos');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 131, 'Sandwiches');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 132, 'Shrimp Tacos');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 133, 'Chilaquiles');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 134, 'Enchiladas');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 135, 'Steak');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 136, 'Roasted Chicken');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 137, 'Buffalo Chicken Dip');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 138, 'Brisket');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 139, 'Dip Breaded Shrimp');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 140, 'Jerk Chicken');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 141, 'Fish');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 142, 'Apple Pie');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 143, 'Cheesecake');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 144, 'Maple Syrup');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 145, 'Rice Bowl');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 146, 'Wraps');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 147, 'Lentils');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 148, 'Jamaican Beef Patties');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 149, 'Salsa');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 150, 'Roast Beef');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 151, 'Gumbo');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 152, 'Steak Tips');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 153, 'Jambalaya');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 154, 'Stews');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 155, 'Bloody Mary');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 156, 'Cioppino');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 157, 'Vinaigrette');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 158, 'Ramen');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 159, 'Quesadillas');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 160, 'Pulled Chicken');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 161, 'Beef Tips');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 162, 'Rice Bowls');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 163, 'Ceviche');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 164, 'Oysters');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 165, 'Guacamole');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 166, 'BBQ');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 167, 'Mashed Potatoes');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 168, 'Grilled Fish');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 169, 'Chowders');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 170, 'Spareribs');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 171, 'Infused Oil');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 172, 'Popcorn');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 173, 'Prime Rib');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 174, 'Crab');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 175, 'Pork Tenderloin');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 176, 'Turkey');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 177, 'Seafood Boil');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 178, 'Red Potatoes');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 179, 'Deviled Eggs');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 180, 'Roasted Potatoes');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 181, 'Jerk Jackfruit');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 182, 'Boston Butt');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 183, 'Roasted Vegetables');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 184, 'Shrimp Scampi');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 185, 'Mix with Butter');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 186, 'Eggs');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 187, 'Venison');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 188, 'Quail');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 189, 'Kettle Corn');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 190, 'Buffalo Mac and Cheese');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 191, 'Buffalo Pizza');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 192, 'Buffalo Dip');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 193, 'Butternut Squash');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 194, 'Buffalo Cauliflower');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 195, 'Noodles');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 196, 'Dip Fries');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 197, 'Mangoes');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 198, 'Buffalo Chicken');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 199, 'Buffalo Fettuccine Alfredo');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 200, 'Chowder');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 201, 'Po Boy');
INSERT INTO `PepperPalaceTestDB`.food( pk_food_id, food_name ) VALUES ( 202, 'Rice and Beans');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 6, 'Original Black Bean and Corn', 'salsa', 'Medium');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 7, 'Original Salsa', 'salsa', 'Mild');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 8, 'Fire Roasted Salsa', 'salsa', 'Medium');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 9, 'Sweet Black Bean and Corn', 'salsa', 'Hot');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 10, 'Sweet Black Bean & Corn', 'salsa', 'Mild');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 11, 'Hummus Salsa', 'salsa', 'Mild');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 12, 'Death By Salsa', 'salsa', 'Wild');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 13, 'Reaper Salsa', 'salsa', 'X-Hot');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 14, 'Ghost Pepper Salsa', 'salsa', 'X-Hot');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 15, 'Garlic Salsa Ghost Pepper', 'salsa', 'X-Hot');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 16, 'Garlic Salsa', 'salsa', 'Medium');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 17, 'Garlic Sweet Salsa', 'salsa', 'Mild');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 18, 'Pineapple Salsa', 'salsa', 'Mild');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 19, 'Mango Salsa', 'salsa', 'Mild');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 20, 'Sweet Spot', 'salsa', 'Medium');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 22, 'Wing Master Hot', 'bbq', 'X-Hot');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 23, 'Wing Master Hot', 'bbq', 'X-Hot');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 24, 'Ghost Wing Sauce', 'bbq', 'Wild');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 25, 'Honey Garlic', 'bbq', 'X-Hot');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 26, 'Mega Garlic', 'bbq', 'Hot');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 27, 'Sweet Chili', 'bbq', 'Hot');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 28, 'Vinegar Wing Sauce', 'bbq', 'Hot');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 29, 'Death By Wings', 'bbq', 'Wild');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 30, 'Garlic Parmesan', 'bbq', 'Hot');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 31, 'Mango Habanero Wing Sauce', 'bbq', 'Hot');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 32, 'Medium Wing Sauce', 'bbq', 'Hot');
INSERT INTO `PepperPalaceTestDB`.sauce( pk_sauce_id, sauce_name, sauce_type, heat_level ) VALUES ( 33, 'Smokehouse', 'bbq', 'Hot');
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 6, 39);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 7, 39);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 8, 39);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 9, 39);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 10, 39);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 12, 39);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 13, 39);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 14, 39);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 15, 39);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 16, 39);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 17, 39);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 18, 39);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 20, 39);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 6, 40);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 10, 40);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 6, 68);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 7, 69);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 13, 69);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 7, 70);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 16, 70);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 8, 71);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 8, 72);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 14, 72);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 17, 72);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 20, 72);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 9, 73);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 9, 74);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 10, 75);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 11, 76);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 11, 77);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 13, 79);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 15, 81);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 15, 82);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 16, 83);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 18, 85);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 18, 86);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 20, 87);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 17, 124);
INSERT INTO `PepperPalaceTestDB`.sauce_pairings( fk_sauce_id, fk_food_id ) VALUES ( 14, 186);
