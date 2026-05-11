CREATE SCHEMA `PepperPalaceTestDB`;

CREATE  TABLE `PepperPalaceTestDB`.food ( 
	pk_food_id           INT   NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	food_name            VARCHAR(30)       
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE `PepperPalaceTestDB`.food COMMENT 'table that contains all the food';

ALTER TABLE `PepperPalaceTestDB`.food MODIFY pk_food_id INT   NOT NULL  AUTO_INCREMENT COMMENT 'the id of the food';

CREATE  TABLE `PepperPalaceTestDB`.sauce ( 
	pk_sauce_id          INT   NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	sauce_name           VARCHAR(100)       ,
	sauce_type           ENUM('salsa','seasoning','wing sauce','hot sauce','bbq','condiments','sauce')       ,
	heat_level           ENUM('None','Mild','Medium','Hot','X-Hot','Wild')       
 ) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

