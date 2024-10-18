CREATE DATABASE  IF NOT EXISTS legoorganizer;

USE legoorganizer;

CREATE TABLE collector (
	collector_id varchar(32),
    password VARCHAR(255),
    PRIMARY KEY (collector_id)
);

CREATE TABLE legoset (
    set_id int,
	setName varchar(70),
    setDescription text NOT NULL,
    setTheme varchar(50),
    setAge varchar(50),
    setPieces int,
    setMinifigures int,
	quantityInStock smallint NOT NULL,
    buyPrice decimal(10,2) NOT NULL,
    image_url varchar(255),
    collector_id varchar(32),
    PRIMARY KEY (set_id),
    FOREIGN KEY (collector_id) REFERENCES collector(collector_id)
);
CREATE TABLE legobricks (
  brick_id int,
  brickName varchar(70) NOT NULL,
  brickCategory varchar(255) NOT NULL,
  brickColor varchar(15),
  quantityInStock bigint NOT NULL,
  buyPrice decimal(10,2) NOT NULL,
  image_url varchar(255),
  set_id int,
  PRIMARY KEY (brick_id),
  FOREIGN KEY (set_id) REFERENCES legoset (set_id)
);
insert into legoset(set_id,setName,setDescription,setTheme,setAge,setPieces,setMinifigures,quantityInStock,buyPrice,image_url) values
(10339,'Santas Post Office','Its LEGO® Santas favorite time of the year at the North Pole Post Office. Cheerful Seasons Greetings are pouring in from around the world, and his favorite reply is to sprinkle holiday cheer wherever he goes. Now that he is here with you, you can help! Gather all the elves, kids and grown-ups in your house and enjoy the fun of building together. Happy Holidays to all!','Christmas','18+','1440','5','15','99.99',NULL),
(21351,'Disney Tim Burtons The Nightmare Before Christmas', 'Eureka! This year, Christmas will be ours! Revisit the tale of the Pumpkin King who kidnaps Sandy Claws with a set based on the Tim Burton stop-animation classic. LEGO® Ideas Disney Tim Burton’s The Nightmare Before Christmas is filled with display-worthy details that you will love discovering from Halloween through Christmas and beyond.','Halloween','18+','2193','6','0','199.99',NULL),
(21028,'New York City','Celebrate the architectural diversity of New York City with this detailed LEGO® brick model. The LEGO Architecture Skyline Collection offers models suitable for display in the home and office, and has been developed for all with an interest in travel, architectural culture, history and design. Each set is scaled to give an accurate representation of the comparative size of each structure, with true-to-life color depiction. This set features the Flatiron Building, Chrysler Building, Empire State Building, One World Trade Center and the Statue of Liberty, and is finished with a decorative New York Citynameplate.','Architecture','12+','598','0','0','59.99',NULL),
(21060,'Himeji Castle','Celebrate the longevity and majestic beauty of one of Japans most revered buildings with this LEGO® Architecture Himeji Castle display model (21060). Be transported to the city of Himeji without leaving home as you recreate authentic details such as the castle’s turrets, walkways and asymmetric walls in LEGO style. Lift off the top of the main building to view a simplified interpretation of the interior layout.','Architecture','18+','2125','0','15','159.99',NULL),
(77070,'Durr Burger','Based on the LEGO Fortnite video game, the set lets fans create a display model of Durrr Burger, the iconic restaurant mascot from the Fortnite universe. Young gamers will have loads of fun and victory well done building the model before discovering its exciting details, including the instantly recognizable eyes, tongue and olive on atoothpick.','Fortnite','9+','193','0','10','14.99',NULL),
(40627,'Sonic The Hedgehog','Fans of Sonic the Hedgehog™ will love taking a screen break to build a tribute to their favorite blue hero. This LEGO® BrickHeadz™ Sonic the Hedgehog™ (40627) set includes a baseplate and creates a fun display piece for desks or gaming stations. Give as a gift to any Sonic fan aged 10 and up.','Sonic The Hedgehog','10+','139','0','1000','9.99',NULL);

insert into legobricks(brick_id,brickName,brickCategory,brickColor,quantityInStock,buyPrice,image_url) values
(6404400, 'BRICK 2X8,OUTSIDE BOW,W/ CUT OUT,NO. 6','Bricks, Bows & Arches','Gold','100','3.32',NULL),
(6441412, 'ROOF TILE 1X2 45° W 1/3 PLATE','Bricks,Slopes','Red','100000000','0.04',NULL),
(6422223,'PLATE 1X1X2/3, OUTSIDE BOW','Bricks,Bows&Arches','Pink','100000000','0.04',NULL),
(6460836, 'PLATE W. BOW 1X2X2/3','Bricks,Bows&Arches','Red','100000000','0.04',NULL),
(4521915, 'BRICK 1X1','Bricks','Earth Green','100000000','0.04',NULL),
(4173805, 'BRICK 1X1','Bricks,Slopes','Bright Orange','100000000','0.04',NULL);




