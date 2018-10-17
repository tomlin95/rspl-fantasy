 /*#create table users(id int NOT NULL PRIMARY KEY AUTO_INCREMENT, name varchar(255), team_number integer, weekly_score integer, total_score integer, balance real, password char(96), email varchar(255), user_name varchar(255), profile_picture BLOB, created_at date, updated_at date);
 #create table teams(id int PRIMARY KEY NOT NULL AUTO_INCREMENT, name varchar(255), user_id integer, webapp_players JSON DEFAULT NULL, formation integer );
 #create table webapp_teams(id int PRIMARY KEY NOT NULL AUTO_INCREMENT, name varchar(255), user_id integer, formation integer, players varchar(1000) );

 # create table webapp_players(id int PRIMARY KEY NOT NULL AUTO_INCREMENT, name varchar(255), league_team varchar(255), score integer, position varchar(255), price real);
 #create table matches(id int PRIMARY KEY NOT NULL AUTO_INCREMENT, scores JSON DEFAULT NULL, teams JSON DEFAULT NULL, location varchar(255), match_date date, week integer);
 #create table results(id int PRIMARY KEY NOT NULL AUTO_INCREMENT, match_id integer, player_id integer,  yc integer, assist integer, goal integer, cleansheet integer, appearance integer,  own_goal integer);
 #INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Peter Harrison","Arnett Gardens FC", 0,"GK",);

#create table webapp_user(id int NOT NULL PRIMARY KEY AUTO_INCREMENT, name varchar(255), team_number integer, weekly_score integer, total_score integer, balance real, password char(96), email varchar(255), user_name varchar(255), profile_picture BLOB, created_at date, updated_at date);
#create table webapp_matches(id int PRIMARY KEY NOT NULL AUTO_INCREMENT, team1_score integer , team2_score integer, team1 varchar(255), team2 varchar(255) ,location varchar(255), match_date date, week integer, status varchar(25), updated varchar(255) DEFAULT 'false');

#INSERT INTO webapp_matches(team1_score, team2_score, team1, team2, location, match_date, week, status) VALUES (1,1, "Tivoli Gardens FC", "Portmore United FC", "Stadium", '2017-04-22', 1, 'true');
#INSERT INTO webapp_matches(team1_score, team2_score, team1, team2, location, match_date, week, status) VALUES (1,1, "Arnett Gardens FC", "Montego Bay United FC", "Stadium", '2017-04-23', 1, 'true');
#INSERT INTO webapp_matches(team1_score, team2_score, team1, team2, location, match_date, week, status) VALUES (2,1, "Portmore United FC", "Tivoli Gardens FC", "Stadium", '2017-04-29', 2, 'false');
#INSERT INTO webapp_matches(team1_score, team2_score, team1, team2, location, match_date, week, status) VALUES (1,2, "Montego Bay United FC", "Arnett Gardens FC", "Stadium", '2017-04-30', 2, 'false');



/*
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Tamar Edwards",	"Arnett Gardens FC", 0,"GK",32000.00);
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Damion Hyatt",		"Arnett Gardens FC", 0,"GK",53000.00);
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Omarley Francis",	"Arnett Gardens FC", 0,"GK",47000.00);
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Rickardo Harriott","Arnett Gardens FC", 0,"D",68000.00);
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Jabeur Johnson",	"Arnett Gardens FC", 0,"D",70000.00);
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Jason Moore",		"Arnett Gardens FC", 0,"D",45000.00);
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Lemar Nelson",		"Arnett Gardens FC", 0,"D",55000.00);
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("O'Neil Thompson",	"Arnett Gardens FC", 0,"D",76000.00);
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Dicoy Williams",	"Arnett Gardens FC", 0,"D",53000.00);
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Jarmar Jackson",	"Arnett Gardens FC", 0,"M",69000.00);
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kimani Arbourine",	"Arnett Gardens FC", 0,"M",70000.00);
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kenniel Hyde",		"Arnett Gardens FC", 0,"M",67000.00);
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Jamar Martin",		"Arnett Gardens FC", 0,"M",77000.00);
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Ranike Anderson",	"Arnett Gardens FC", 0,"M",85000.00);
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Fabian Reid",		"Arnett Gardens FC", 0,"M",100000.00);
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Damari Deacon",	"Arnett Gardens FC", 0,"M",90000.00);
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Lennox Russell",	"Arnett Gardens FC", 0,"S",85000.00);
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Marvin Morgan Jr.","Arnett Gardens FC", 0,"S",88000.00);
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kemal Malcolm",	"Arnett Gardens FC", 0,"S",60000.00);
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Newton Sterling",	"Arnett Gardens FC", 0,"S",76000.00);
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Leon Strickland",	"Arnett Gardens FC", 0,"S",60000.00);
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Steve Clarke",		"Arnett Gardens FC", 0,"S",67000.00);
 INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Raffique Bryan",	"Arnett Gardens FC", 0,"S",50000.00);
 

 
 
 

 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kirk Porter",		" Boys' Town FC", 0,"GK",47000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Leon Goffe",		" Boys' Town FC", 0,"GK",39000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Wayne Ellis",		" Boys' Town FC", 0,"D",77000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Hugh Evans",		" Boys' Town FC", 0,"D",91000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kimarley Fray",		" Boys' Town FC", 0,"D",62000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Asrick Samuels",	" Boys' Town FC", 0,"D",33000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kevon Wilson",		" Boys' Town FC", 0,"D",54000.00); 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Shavon Wilson",		" Boys' Town FC", 0,"D",56000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Xavian Virgo",		" Boys' Town FC", 0,"D",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Andre Dawson",		" Boys' Town FC", 0,"M",50000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Daemon Benjamin",	" Boys' Town FC", 0,"M",65000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Ricardo Dennis",	" Boys' Town FC", 0,"M",69000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Garfield Gillespie"," Boys' Town FC", 0,"M",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Marvin Stewart",	" Boys' Town FC", 0,"M",51000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Michael Campbell ",	" Boys' Town FC", 0,"M",73000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Dean Edwards",		" Boys' Town FC", 0,"M",65000.00));
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Fabian Francis",	" Boys' Town FC", 0,"S",60000.00));
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Anthony Dawes",		" Boys' Town FC", 0,"S",85000.00); 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Shamar Nicholson",	" Boys' Town FC", 0,"S",190000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Chavaney Willis",	" Boys' Town FC", 0,"S",70000.00));
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Trevin Garnett",	" Boys' Town FC", 0,"S",80000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Rupert Murray",	    " Boys' Town FC", 0,"S",70000.00));	  



INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Christian Kluvi",			" Harbour View FC", 0,"GK",60000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Mark Bryan",				" Harbour View FC", 0,"GK",44000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Devon Haughton",			" Harbour View FC", 0,"GK",50000.00;
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Christopher Harvey",		" Harbour View FC", 0,"D",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Daminan Anderson",			" Harbour View FC", 0,"D",65000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Hugh Evans",				" Harbour View FC", 0,"D",80000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Rosario Harriott",			" Harbour View FC", 0,"D",74000.00); 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Dejanni Isaacs",			" Harbour View FC", 0,"D",54000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Ian Goodison",				" Harbour View FC", 0,"D",55000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Mark Miller",				" Harbour View FC", 0,"D",80000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Damarley Oliver",			" Harbour View FC", 0,"D",90000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Montrose Phinn",			" Harbour View FC", 0,"D",73000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Odaine Samuels",			" Harbour View FC", 0,"D",74000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kyle Smith",				" Harbour View FC", 0,"D",63000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Nicholas Beckett ",			" Harbour View FC", 0,"M",80000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Andrew Allen",				" Harbour View FC", 0,"M",80000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Jaleel Chamberlain",		" Harbour View FC", 0,"M",60000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("John-Ross Edwards",			" Harbour View FC", 0,"M",90000.00); 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Bryan English",				" Harbour View FC", 0,"M",72000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Akeem Priestley",			" Harbour View FC", 0,"M",65000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Jorginho James",			" Harbour View FC", 0,"M",71000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Oushane Martin",	    	" Harbour View FC", 0,"M",67000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Savian Maxwell",			" Harbour View FC", 0,"M",55000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Khachief Mills",			" Harbour View FC", 0,"S",59000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Le-Shaun Young",			" Harbour View FC", 0,"S",89000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Claudious Blackburn",	    " Harbour View FC", 0,"S",62000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Shivnarine Brown",			" Harbour View FC", 0,"S",67000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Shawn Hindsn",				" Harbour View FC", 0,"S",73000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Anthony Marks",				" Harbour View FC", 0,"S",75000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Ranique Muir",				" Harbour View FC", 0,"S",100000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Alphanso Gooden",			" Harbour View FC", 0,"S",65000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Luton Shelton",				" Harbour View FC", 0,"S",86000.00);





INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kadeem Davis",				" Humble Lions FC", 0,"GK",61000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Sanchez Lloyd",				" Humble Lions FC", 0,"GK",43000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Allien Whittaker",			" Humble Lions FC", 0,"GK",23000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Linval Lewis",				" Humble Lions FC", 0,"D",69000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Levaughn Williams",			" Humble Lions FC", 0,"D",72000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Ricardo Campbell",			" Humble Lions FC", 0,"D",85000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Dwayne Holmes",				" Humble Lions FC", 0,"D",81000.00); 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kevon Reid",				" Humble Lions FC", 0,"D",56000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Jermaine Christian",		" Humble Lions FC", 0,"M",65000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Gregory Lewis",				" Humble Lions FC", 0,"M",71000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Roberto Fletcher",			" Humble Lions FC", 0,"M",69000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kadian Wynter",				" Humble Lions FC", 0,"M",68000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Ricardo Cousins",			" Humble Lions FC", 0,"M",67000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Andrew Vanzie",				" Humble Lions FC", 0,"M",90000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Wolry Wolfe ",				" Humble Lions FC", 0,"M",77000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kemeel Wolfe",				" Humble Lions FC", 0,"M",62000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Horace Sharpe",				" Humble Lions FC", 0,"M",67000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Francios Swaby",			" Humble Lions FC", 0,"S",850000.00); 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Hughan Gray",				" Humble Lions FC", 0,"S",82000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Dwayne Campbell",			" Humble Lions FC", 0,"S",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Devon Hodges",				" Humble Lions FC", 0,"S",73000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Hugh Howel",			    " Humble Lions FC", 0,"S",80000.00);




INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Jacomeno Barrett",		" Montego Bay United  FC", 0,"GK",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Garen Downie",			" Montego Bay United  FC", 0,"GK",49000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kevin Drake",			" Montego Bay United  FC", 0,"D",65000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Dwayne Ambusley",		" Montego Bay United  FC", 0,"D",75000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("John Barrett",			" Montego Bay United  FC", 0,"D",75000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Keniel Kirlew",			" Montego Bay United  FC", 0,"D",78000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Orlando McBayne",		" Montego Bay United  FC", 0,"D",91000.00); 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Fabian McCarthy",		" Montego Bay United  FC", 0,"D",94000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Ladala Richie",			" Montego Bay United  FC", 0,"D",78000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Cordel Simpson",		" Montego Bay United  FC", 0,"D",60000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Zvezdan Đorđilović",	" Montego Bay United  FC", 0,"D",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Winston Wilkinson",		" Montego Bay United  FC", 0,"D",50000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Lacon Brissett",		" Montego Bay United  FC", 0,"M",81000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Mouricio Gordon",		" Montego Bay United  FC", 0,"M",79000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Graeme Green ",			" Montego Bay United  FC", 0,"M",73000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Leon Irving",			" Montego Bay United  FC", 0,"M",65000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Ronaldo Rodney",		" Montego Bay United  FC", 0,"M",80000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Jermaine Woozencroft",	" Montego Bay United  FC", 0,"M",77000.00); 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Allan Ottey",			" Montego Bay United  FC", 0,"S",99000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Lesly St. Fleur",		" Montego Bay United  FC", 0,"S",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kashief Brown",		``	" Montego Bay United  FC", 0,"S",67000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Dino Williams",	    	" Montego Bay United  FC", 0,"S",190000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("David Carey",			" Montego Bay United  FC", 0,"S",80000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Oliver Gordon",	    	" Montego Bay United  FC", 0,"S",78000.00);





INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kemar Foster",			" Portmore United  FC", 0,"GK",53000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Shaven Paul",			" Portmore United  FC", 0,"GK",60000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Eric Edwards",			" Portmore United  FC", 0,"GK",20000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Stephen Williams",		" Portmore United  FC", 0,"D",66000.00):
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Damano Solomon",		" Portmore United  FC", 0,"D",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Ryan Wellington",		" Portmore United  FC", 0,"D",50000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Osani Ricketts",		" Portmore United  FC", 0,"D",60000.00); 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Upston Edwards",		" Portmore United  FC", 0,"D",78000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Andre Dyce",			" Portmore United  FC", 0,"D",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kareem Manning",		" Portmore United  FC", 0,"D",80000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Roberto Johnson",		" Portmore United  FC", 0,"D",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Ewan Grandison",		" Portmore United  FC", 0,"M",92000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Ewan Grandison",		" Portmore United  FC", 0,"M",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Ricardo Morris",		" Portmore United  FC", 0,"M",89000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Maalique Foster ",		" Portmore United  FC", 0,"M",90000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kemar Philpotts",		" Portmore United  FC", 0,"M",71000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kemo Gayle",			" Portmore United  FC", 0,"M",60000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Sue-Lae McCalla",		" Portmore United  FC", 0,"M",67000.00); 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Adoah Nickles",			" Portmore United  FC", 0,"S",80000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Cleon Pryce",			" Portmore United  FC", 0,"S",90000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Mark Alves",			" Portmore United  FC", 0,"S",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Tremaine Stewart",	    " Portmore United  FC", 0,"S",65000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Jovan East",			" Portmore United  FC", 0,"S",99000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Iishmale Currie",		" Portmore United  FC", 0,"S",68000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Rodian Jennings",		" Portmore United  FC", 0,"S",69000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kambuji McCalla",		" Portmore United  FC", 0,"S",85000.00);





INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Dennis Taylor",			" FC Reno", 0,"GK",45000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Marchris Richards",		" FC Reno", 0,"GK",43000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Joel Johnson",			" FC Reno", 0,"GK",30000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Sheldon Bryan",			" FC Reno", 0,"D",44000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Glenroy Cooper",		" FC Reno", 0,"D",78000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Ron Daley",				" FC Reno", 0,"D",67000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Omar Dallas",			" FC Reno", 0,"D",85000.00); 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("David McKenzie",		" FC Reno", 0,"D",80000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Desmond Montique",		" FC Reno", 0,"D",45000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Orane Warren",			" FC Reno", 0,"D",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Linval Wilson",			" FC Reno", 0,"D",66000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Tremaine Perrys",		" FC Reno", 0,"D",45000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Romario Smith",			" FC Reno", 0,"M",90000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Rondell Morris",		" FC Reno", 0,"M",80000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Jahshane Foster ",		" FC Reno", 0,"M",60000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Omar Johnson",			" FC Reno", 0,"M",65000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Wanique Pinnock",		" FC Reno", 0,"S",66000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Evan Taylor",			" FC Reno", 0,"S",50000.00); 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Davian Thorpe",			" FC Reno", 0,"S",71000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Norman Woolery",		" FC Reno", 0,"S",69000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Delroy Phillips",		" FC Reno", 0,"S",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Shashamarley Barrett",	" FC Reno", 0,"S",66000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Orpheous McPherson",	" FC Reno", 0,"S",65000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Delano Rankine",	    " FC Reno", 0,"S",69000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Renario Downswell",	    " FC Reno", 0,"S",80000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kavar Walker",	    	" FC Reno", 0,"S",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Omar Johnson",	    	" FC Reno", 0,"S",75000.00);






INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Davin Watkins",				" Tivoli Gardens FC", 0,"GK",45000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Edsel Scott",				" Tivoli Gardens FC", 0,"GK",25000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Barrington Pryce",			" Tivoli Gardens FC", 0,"D",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kemar Flemmings",			" Tivoli Gardens FC", 0,"D",54000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Damion Gordon",				" Tivoli Gardens FC", 0,"D",44000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kasai Hinds",				" Tivoli Gardens FC", 0,"D",57000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Christopher Jackson",		" Tivoli Gardens FC", 0,"D",74000.00); 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Richard Williams",			" Tivoli Gardens FC", 0,"D",76000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Shavar Campbell",			" Tivoli Gardens FC", 0,"M",71000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Tevin Shaw",				" Tivoli Gardens FC", 0,"M",80000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Mitchily Waul",				" Tivoli Gardens FC", 0,"M",79000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Shawn McKoy",				" Tivoli Gardens FC", 0,"M",75000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Andre Morgan",				" Tivoli Gardens FC", 0,"M",73000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Rohan Reid",				" Tivoli Gardens FC", 0,"M",60000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Marvin Stewart ",			" Tivoli Gardens FC", 0,"M",75000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kemar Seivwright",			" Tivoli Gardens FC", 0,"M",80000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Jermaine Johnson",			" Tivoli Gardens FC", 0,"S",170000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Jamoy Sibblies",			" Tivoli Gardens FC", 0,"S",72000.00); 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Nicholas Scott",			" Tivoli Gardens FC", 0,"S",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Elton Thompson",			" Tivoli Gardens FC", 0,"S",81000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Nicholas Smith",			" Tivoli Gardens FC", 0,"S",80000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Romaine Brackenridge",	   	" Tivoli Gardens FC", 0,"S",79000.00);



INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Shannon Bartley",			"Rivoli United  FC", 0,"GK",55000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Marlon Henry",				"Rivoli United  FC", 0,"GK",35000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Davion Garrison",			"Rivoli United  FC", 0,"D",79000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Fabian Gordon",				"Rivoli United  FC", 0,"D",69000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kevin Graham",				"Rivoli United  FC", 0,"D",66000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Christopher Hayles",		"Rivoli United  FC", 0,"D",75000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Jermaine Henry",			"Rivoli United  FC", 0,"D",67000.00); 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Liston James",				"Rivoli United  FC", 0,"D",34000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kenny Lee",					"Rivoli United  FC", 0,"D",69000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Fidel Anderson",			"Rivoli United  FC", 0,"M",55000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kemar Bennett",				"Rivoli United  FC", 0,"M",79000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Cory Burke",				"Rivoli United  FC", 0,"M",66000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Ross Burton",				"Rivoli United  FC", 0,"M",60000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Valentine Gardener",		"Rivoli United  FC", 0,"M",50000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Jason Vassell ",			"Rivoli United  FC", 0,"M",77000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Raymond Williamson",		"Rivoli United  FC", 0,"M",71000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Devon Hodges",				"Rivoli United  FC", 0,"S",75000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Marcelino Blackburn",		"Rivoli United  FC", 0,"S",66000.00); 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kemar Smith",				"Rivoli United  FC", 0,"S",59000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Michael Blygen",			"Rivoli United  FC", 0,"S",77000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("George Brown",				"Rivoli United  FC", 0,"S",80000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Ricardo Knight",	    	"Rivoli United  FC", 0,"S",61000.00);





INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kelso Cousins",			"Waterhouse  FC", 0,"GK",45000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Richard McCallum",		"Waterhouse  FC", 0,"GK",40000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Rohan Amos",			"Waterhouse  FC", 0,"D",56000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kemar Brown",			"Waterhouse  FC", 0,"D",45000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Nicodie Haughton",		"Waterhouse  FC", 0,"D",40000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Nicholay Finlayson",	"Waterhouse  FC", 0,"D",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Jamal Mahmoudi",		"Waterhouse  FC", 0,"D",80000.00); 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Oshane Roberts",		"Waterhouse  FC", 0,"D",59000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Upston Edwards",		"Waterhouse  FC", 0,"D",39000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Juvaune Benjamin",		"Waterhouse  FC", 0,"M",67000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Irvino English",		"Waterhouse  FC", 0,"M",77000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("DeAndre Brown",			"Waterhouse  FC", 0,"M",75000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Vincent Earle",			"Waterhouse  FC", 0,"M",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Romario Campbell",		"Waterhouse  FC", 0,"M",79000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Ronald Joseph ",		"Waterhouse  FC", 0,"M",68000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Jamoly Powell",			"Waterhouse  FC", 0,"M",60000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Nicko Williams",		"Waterhouse  FC", 0,"S",68000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Jermaine Anderson",		"Waterhouse  FC", 0,"S",80000.00); 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Neicko Williams",		"Waterhouse  FC", 0,"S",67000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Chedlin Francoeur",		"Waterhouse  FC", 0,"S",64000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kemar Beckford",		"Waterhouse  FC", 0,"S",78000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Andre McFarlane",	    "Waterhouse  FC", 0,"S",70000.00);





INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Devon Haughton",			"August Town  FC", 0,"GK",60000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Diego Haughton",			"August Town  FC", 0,"GK",20000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Maurice Bennett",			"August Town  FC", 0,"D",54000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Shamar Brown",				"August Town  FC", 0,"D",44000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Gue Daley",					"August Town  FC", 0,"D",66000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("DeanPaul Grandison",		"August Town  FC", 0,"D",58000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Jeffrey Grant",				"August Town  FC", 0,"D",59000.00); 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Leon Love",					"August Town  FC", 0,"D",55000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kurt Richards",				"August Town  FC", 0,"D",50000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Davion Alves",				"August Town  FC", 0,"M",61000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Chad Bennett",				"August Town  FC", 0,"M",55000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Chauncey Delahaye",			"August Town  FC", 0,"M",44000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Richard Orrette",			"August Town  FC", 0,"M",67000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Larone Russell",			"August Town  FC", 0,"M",59000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("David Stultz ",				"August Town  FC", 0,"M",56000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Jerome Wedderburn",			"August Town  FC", 0,"M",66000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Michael Spence",			"August Town  FC", 0,"S",72000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Nicholas Smith",			"August Town  FC", 0,"S",55000.00); 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Owen Powell",				"August Town  FC", 0,"S",67000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Javanie Mitchell",			"August Town  FC", 0,"S",72000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Lennox Creary",				"August Town  FC", 0,"S",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kymani Spence",	   		    "August Town  FC", 0,"S",69000.00);




INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Amal Knight",				"UWI  FC", 0,"GK",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Leighton Donaldson",		"UWI  FC", 0,"GK",40000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Nicholas King",				"UWI  FC", 0,"D",60000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Allando Brown",				"UWI  FC", 0,"D",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Daniel Gilzene",			"UWI  FC", 0,"D",54000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Deighton Stuart",			"UWI  FC", 0,"D",66000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Dravian Williams",			"UWI  FC", 0,"D",65000.00); 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kemar Flemmings",			"UWI  FC", 0,"D",90000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Stephen Lowe",				"UWI  FC", 0,"D",40000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Andrae Bernal",				"UWI  FC", 0,"M",71000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Davion Garrison",			"UWI  FC", 0,"M",67000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Girvon Brown",				"UWI  FC", 0,"M",77000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Jerondy Henry",				"UWI  FC", 0,"M",69000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Kemoy Atkinson",			"UWI  FC", 0,"M",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Rochane Smith",				"UWI  FC", 0,"M",55000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Patrick Brown",				"UWI  FC", 0,"M",67000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Ramoun Reids",				"UWI  FC", 0,"S",67000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Taniel McKenzie",			"UWI  FC", 0,"S",70000.00); 
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Anthony Greenland",			"UWI  FC", 0,"S",81000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Deno Schaffe",				"UWI  FC", 0,"S",80000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Dwayne Smith",				"UWI  FC", 0,"S",70000.00);
INSERT INTO webapp_players (name,league_team, score, position, price) VALUES ("Jamie Robinson",	    	"UWI  FC", 0,"S",66000.00);


*/

INSERT INTO webapp_matches(team1_score, team2_score, team1, team2, location,match_date, week, status) VALUES (1,1, 'Arnett Gardens FC',  'Boys Town FC ', 'Tony Spaulding Sports Complex', 2017-05- 06, 1, 'true');

INSERT INTO webapp_matches(team1_score, team2_score, team1, team2, location,match_date, week, status) VALUES (1,3,  'Harbour View FC' ,  'Montego Bay United FC', 'Harbour View Stadium', 2017-05- 06, 1, 'true');

INSERT INTO webapp_matches(team1_score, team2_score, team1, team2, location,match_date, week, status) VALUES (2,0, 'Portmore United FC ',  'FC Reno ',  'Ferdie NeitaSports Complex', 2017-05- 06, 1, true);
INSERT INTO webapp_matches(team1_score, team2_score, team1, team2, location,match_date, week, status) VALUES (1,0,  'Humble Lions FC',  'Tivoli Gardens FC',  'EffortvilleCommunity Centre', 2017-05- 07, 1, true);
INSERT INTO webapp_matches(team1_score, team2_score, team1, team2, location,match_date, week, status) VALUES (1,2,  'Rivoli United FC' , ' Waterhouse FC ', ' WaterhouseStadium', 2017-05- 07, 1, true);
INSERT INTO webapp_matches(team1_score, team2_score, team1, team2, location,match_date, week, status) VALUES (5,0,  'UWI FC ',  'August Town FC', ' UWI Bowl', 2017-05-07, 1, true);

/*

INSERT INTO webapp_results(match_id, player_id, yc , assist, goal, cleansheet, appearance, own_goal, rc)VALUES (1,2,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc )VALUES (1,4,1,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc)VALUES (1,5,0,0,0,0,1,0,0);

INSERT INTO webapp_results(match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc )VALUES (1,7,1,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc) VALUES (1,8,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc)VALUES (1,13,0,1,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc)VALUES (1,14,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc )VALUES (1,15,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc) VALUES (1,16,0,0,0,0,1,0,0);

INSERT INTO  webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (1,17,0,0,1,0,1,0,0);

INSERT INTO  webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (1,18,0,0,0,0,1,0,0);



INSERT INTO  webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc) VALUES (1,24,0,0,0,0,1,0,0);

INSERT INTO  webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc) VALUES (1,26,0,0,0,0,1,0,0);

INSERT INTO  webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc) VALUES (1,27,0,0,0,0,1,0,0);

INSERT INTO  webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (1,28,1,0,0,0,1,0,0);

INSERT INTO  webapp_results(match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (1,32,0,0,0,0,1,0,0);

INSERT INTO  webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (1,34,0,1,0,0,1,0,0); 
INSERT INTO  webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (1,35,0,0,0,0,1,0,0);

INSERT INTO  webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (1,36,0,0,0,0,1,0,0);

INSERT INTO  webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc) VALUES (1,38,0,0,0,0,1,0,0);

INSERT INTO  webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc) VALUES (1,39,0,0,0,0,1,0,0);

INSERT INTO  webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (1,40,0,0,1,0,1,0,0);


INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (2,42,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (2,44,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (2,46,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (2,47,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (2,50,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (2,51,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (2,55,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (2,56,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (2,58,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (2,59,1,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc) VALUES (2,72,0,0,1,0,1,0,0);


INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (2,95,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (2,100,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (2,102,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (2,103,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (2,105,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc) VALUES (2,107,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (2,108,0,2,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (2,111,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (2,113,0,0,1,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (2,115,0,1,2,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc) VALUES (2,116,0,0,0,0,1,0,0);


INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (3,119,0,0,0,1,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc) VALUES (3,122,0,0,0,1,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc) VALUES (3,123,0,0,0,1,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (3,124,0,0,0,1,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (3,125,0,0,0,1,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (3,126,0,0,0,1,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (3,127,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (3,129,0,0,1,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc) VALUES (3,130,0,0,1,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc) VALUES (3,135,0,1,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc) VALUES (3,138,0,1,0,0,1,0,0);


INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (3,142,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (3,146,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (3,147,1,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (3,148,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (3,149,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (3,154,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (3,155,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (3,157,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (3,162,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (3,165,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (3,166,0,0,0,0,1,0,0);


INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc) VALUES (4,73,0,0,0,1,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (4,77,0,0,0,1,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (4,78,0,0,0,1,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (4,79,0,0,0,1,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc) VALUES (4,80,0,0,0,1,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (4,82,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (4,86,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (4,87,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (4,89,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc) VALUES (4,90,0,1,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (4,91,0,0,1,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (4,169,0,0,0,0,1,0, 0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (4,171,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (4,174,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (4,176,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc) VALUES (4,178,0,0,0,0,1,0, 0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (4,179,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (4,180,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (4,181,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (4,182,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (4,185,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (4,188,0,0,0,0,1,0,0);


INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (5,191,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (5,193,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (5,194,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (5,196,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc) VALUES (5,197,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (5,201,0,0,0,0,1,0,0)
INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (5,205,0,1,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (5,206,0,0,1,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc) VALUES (5,207,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (5,210,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (5,211,1,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc) VALUES (5,213,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (5,215,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (5,218,1,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (5,219,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (5,222,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (5,223,0,1,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (5,224,0,1,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (5,225,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (5,226,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (5,230,0,0,1,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (5,233,0,0,1,0,1,0,0);



INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc )VALUES (6,257,0,0,0,1,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc )VALUES (6,259,0,0,0,1,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc )VALUES (6,260,0,0,0,1,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc )VALUES (6,262,0,0,0,1,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc )VALUES (6,264,0,0,1,1,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc )VALUES (6,266,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc )VALUES (6,268,0,1,1,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc )VALUES (6,270,0,0,1,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc )VALUES (6,275,0,0,1,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc )VALUES (6,276,0,1,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc )VALUES (6,277,0,1,0,0,1,0,0);


INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc)VALUES (6,235,0,0,0,0,1,0, 0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc )VALUES (6,237,0,0,0,0,1,1,0);
INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc )VALUES (6,239,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc )VALUES (6,241,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (6,242,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (6,247,1,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc ) VALUES (6,248,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc )VALUES (6,250,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc )VALUES (6,251,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc )VALUES (6,254,0,0,0,0,1,0,0);

INSERT INTO webapp_results( match_id , player_id , yc , assist , goal , cleansheet , appearance , own_goal, rc )VALUES (6,255,0,0,0,0,1,0,0);

*/

