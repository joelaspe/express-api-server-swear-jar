\c swearjar
DELETE * FROM people;
DELETE * FROM swears;
INSERT INTO people(name) VALUES ('Autumn Sheridan');
INSERT INTO people(name) VALUES ('Bao Tran');
INSERT INTO people(name) VALUES ('Benjamin Schenk');
INSERT INTO people(name) VALUES ('Brandon Stegall');
INSERT INTO people(name) VALUES ('Bryan Torresl');
INSERT INTO people(name) VALUES ('Carl Gutierrez');
INSERT INTO people(name) VALUES ('Dorion Boesch');
INSERT INTO people(name) VALUES ('Dylan Goron');
INSERT INTO people(name) VALUES ('Garrett Lubecki');
INSERT INTO people(name) VALUES ('Joe Carillo');
INSERT INTO people(name) VALUES ('Joey Laspe');
INSERT INTO people(name) VALUES ('Matthew Hopper');
INSERT INTO people(name) VALUES ('Michelle Dukette');
INSERT INTO people(name) VALUES ('Nathan Vititoe');
INSERT INTO people(name) VALUES ('Patrick McGinnis');
INSERT INTO people(name) VALUES ('Pedro Modesto');
INSERT INTO people(name) VALUES ('Sean Guerrero');
INSERT INTO people(name) VALUES ('Yasmin Aguilar');
INSERT INTO people(name) VALUES ('Garrett Ross');
INSERT INTO people(name) VALUES ('Chris Ronca');
INSERT INTO people(name) VALUES ('Keyonna Garfine');
INSERT INTO swears(person_id, date_created) VALUES ('1', CURRENT_TIMESTAMP - interval '1 hour');
INSERT INTO swears(person_id, date_created) VALUES ('1', CURRENT_TIMESTAMP - interval '2 hours');
INSERT INTO swears(person_id, date_created) VALUES ('10', CURRENT_TIMESTAMP - interval '3 hours');
INSERT INTO swears(person_id, date_created) VALUES ('1', CURRENT_TIMESTAMP - interval '4 hours');
INSERT INTO swears(person_id, date_created) VALUES ('20', CURRENT_TIMESTAMP - interval '5 hours');
INSERT INTO swears(person_id, date_created) VALUES ('20', CURRENT_TIMESTAMP - interval '6 hours');
INSERT INTO swears(person_id, date_created) VALUES ('1', CURRENT_TIMESTAMP - interval '7 hours');
INSERT INTO swears(person_id, date_created) VALUES ('21', CURRENT_TIMESTAMP - interval '8 hours');
INSERT INTO swears(person_id, date_created) VALUES ('21', CURRENT_TIMESTAMP - interval '9 hours');
INSERT INTO swears(person_id, date_created) VALUES ('20', CURRENT_TIMESTAMP - interval '10 hours');
INSERT INTO swears(person_id, date_created) VALUES ('20', CURRENT_TIMESTAMP - interval '11 hours');
INSERT INTO swears(person_id, date_created) VALUES ('20', CURRENT_TIMESTAMP - interval '12 hours');
INSERT INTO swears(person_id, date_created) VALUES ('4', CURRENT_TIMESTAMP - interval '13 hours');
INSERT INTO swears(person_id, date_created) VALUES ('20', CURRENT_TIMESTAMP - interval '14 hours');
INSERT INTO swears(person_id, date_created) VALUES ('20', CURRENT_TIMESTAMP - interval '15 hours');
INSERT INTO swears(person_id, date_created) VALUES ('5', CURRENT_TIMESTAMP - interval '16 hours');
INSERT INTO swears(person_id, date_created) VALUES ('20', CURRENT_TIMESTAMP - interval '17 hours');
INSERT INTO swears(person_id, date_created) VALUES ('9', CURRENT_TIMESTAMP - interval '18 hours');
INSERT INTO swears(person_id, date_created) VALUES ('1', CURRENT_TIMESTAMP - interval '19 hours');
INSERT INTO swears(person_id, date_created) VALUES ('1', CURRENT_TIMESTAMP - interval '20 hours');
INSERT INTO swears(person_id, date_created) VALUES ('1', CURRENT_TIMESTAMP - interval '21 hours');