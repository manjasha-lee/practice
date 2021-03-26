INSERT INTO Organization (version, name, full_name, inn, kpp, address, phone, is_active) VALUES (0, 'Oazis', 'ООО GreenLine', '1234567890', '123456789', 'ул.Толстого, д.45, кв.10', '87054322345','1' );
INSERT INTO Organization (version, name, full_name, inn, kpp, address, phone, is_active) VALUES (0, 'Содружество', 'ОАО Содружество', '1432567890', '125436789', 'ул.Пушкина, д.25, кв.3', '87754223355','1' );
INSERT INTO Organization (version, name, full_name, inn, kpp, address, phone, is_active) VALUES (0, 'Сбор', 'ЗАО Сбор', '3214567890', '353456789', 'ул.Королева, д.6, кв.5', '87774323245','1' );
INSERT INTO Organization (version, name, full_name, inn, kpp, address, phone, is_active) VALUES (0, 'Фараон', 'ОАО Фараон', '4321567890', '543216789', 'пр.Ленина, д.108', '87056677345','1' );
INSERT INTO Organization (version, name, full_name, inn, kpp, address, phone, is_active) VALUES (0, 'Планета Спорта', 'ООО Планета Спорта', '9898567890', '196216789', 'ул.Садовая, д.19', '87776677878','1' );

INSERT INTO Office (version, org_id, name, address, is_active) VALUES (0, 1, 'Oazis1', 'ул.Горького д.115, кв.4', '1');
INSERT INTO Office (version, org_id, name, address, is_active) VALUES (0, 1, 'Oazis2', 'ул.Тарана д.85, кв.1', '1');
INSERT INTO Office (version, org_id, name, address, is_active) VALUES (0, 3, 'Сбор3', 'ул.Гагарина д.56, кв.5', '1');
INSERT INTO Office (version, org_id, name, address, is_active) VALUES (0, 5, 'Level Up', 'ул.Гоголя д.96, кв.2', '1');
INSERT INTO Office (version, org_id, name, address, is_active) VALUES (0, 5, 'Титан', 'ул.Победы д.145, кв.1', '1');

INSERT INTO User (version, office_id, first_name, last_name, middle_name, position, phone, doc_number, doc_date, is_identified) VALUES (0, 2, 'Ирина', 'Цветкова', 'Федоровна', 'флорист', '87779564565', '1234567890', '2010-05-04', '1');
INSERT INTO User (version, office_id, first_name, last_name, middle_name, position, phone, doc_number, doc_date, is_identified) VALUES (0, 3, 'Петр', 'Иванов', 'Петрович', 'менеджер', '87776794565', '3334567987', '2009-10-25', '1');
INSERT INTO User (version, office_id, first_name, last_name, middle_name, position, phone, doc_number, doc_date, is_identified) VALUES (0, 5, 'Иван', 'Петров', 'Иванович', 'тренер', '87759544577', '4534567456', '2012-12-12', '1');
INSERT INTO User (version, office_id, first_name, last_name, middle_name, position, phone, doc_number, doc_date, is_identified) VALUES (0, 4, 'Татьяна', 'Лукина', 'Сергеевна', 'администратор', '87779598165', '7634567136', '2020-04-10', '1');
INSERT INTO User (version, office_id, first_name, last_name, middle_name, position, phone, doc_number, doc_date, is_identified) VALUES (0, 3, 'Игорь', 'Сидоров', 'Сергеевич', 'экономист', '87788754511', '8734567875', '2008-08-01', '1');

INSERT INTO Doc (user_id, version, doc_name, citizenship_name, citizenship_code, doc_code) VALUES (1, 0, 'Паспорт гражданина Российской Федерации', '21');
INSERT INTO Doc (user_id, version, doc_name, citizenship_name, citizenship_code, doc_code) VALUES (2, 0, 'Паспорт гражданина Российской Федерации', '21');
INSERT INTO Doc (user_id, version, doc_name, citizenship_name, citizenship_code, doc_code) VALUES (3, 0, 'Паспорт гражданина Российской Федерации', '21');
INSERT INTO Doc (user_id, version, doc_name, citizenship_name, citizenship_code, doc_code) VALUES (4, 0, 'Паспорт гражданина Российской Федерации', '21');
INSERT INTO Doc (user_id, version, doc_name, citizenship_name, citizenship_code, doc_code) VALUES (5, 0, 'Паспорт гражданина Российской Федерации', '21');

INSERT INTO Country (user_id, version, citizenship_name, citizenship_code) VALUES (1, 0, 'РФ', '643');
INSERT INTO Country (user_id, version, citizenship_name, citizenship_code) VALUES (2, 0, 'РФ', '643');
INSERT INTO Country (user_id, version, citizenship_name, citizenship_code) VALUES (3, 0, 'РФ', '643');
INSERT INTO Country (user_id, version, citizenship_name, citizenship_code) VALUES (4, 0, 'РФ', '643');
INSERT INTO Country (user_id, version, citizenship_name, citizenship_code) VALUES (5, 0, 'РФ', '643');