INSERT INTO author (id, name, bithdate) VALUES ('3b45d5aa-932e-11eb-a8b3-0242ac130003', 'Jane Austen', '1775-12-16');
INSERT INTO author (id, name, bithdate) VALUES ('40543208-932e-11eb-a8b3-0242ac130003', 'Agatha Christie', '1890-07-15');
INSERT INTO author (id, name, bithdate) VALUES ('44b3d27c-932e-11eb-a8b3-0242ac130003', 'Stephen King', '1947-07-21');

INSERT INTO publishing_company (id, name) VALUES ('48b2b4ec-932e-11eb-a8b3-0242ac130003', 'Martin Claret');
INSERT INTO publishing_company (id, name) VALUES ('4f05160a-932e-11eb-a8b3-0242ac130003', 'Harper Collins');
INSERT INTO publishing_company (id, name) VALUES ('557fe488-932e-11eb-a8b3-0242ac130003', 'Suma');

INSERT INTO classic_book (id, title, publication_date, category, publishing_company_id)
VALUES ('163b91fe-932f-11eb-a8b3-0242ac130003', 'Orgulho e preconceito', '2018-04-12', 'ROMANCE', '48b2b4ec-932e-11eb-a8b3-0242ac130003');
INSERT INTO classic_book (id, title, publication_date, category, publishing_company_id)
VALUES ('1d699106-932f-11eb-a8b3-0242ac130003', 'Uma porção de centeio', '2021-03-15', 'MISTERY', '4f05160a-932e-11eb-a8b3-0242ac130003');
INSERT INTO classic_book (id, title, publication_date, category, publishing_company_id)
VALUES ('21df752a-932f-11eb-a8b3-0242ac130003', 'O iluminado', '2012-11-19', 'HORROR', '557fe488-932e-11eb-a8b3-0242ac130003');

INSERT INTO book_authors (book_id, author_id) VALUES ('163b91fe-932f-11eb-a8b3-0242ac130003', '3b45d5aa-932e-11eb-a8b3-0242ac130003');
INSERT INTO book_authors (book_id, author_id) VALUES ('1d699106-932f-11eb-a8b3-0242ac130003', '40543208-932e-11eb-a8b3-0242ac130003');
INSERT INTO book_authors (book_id, author_id) VALUES ('21df752a-932f-11eb-a8b3-0242ac130003', '44b3d27c-932e-11eb-a8b3-0242ac130003');