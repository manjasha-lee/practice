INSERT INTO Organization (version, name, full_name, inn, kpp, address, phone, is_active) VALUES (0, 'Oasis', 'ООО GreenLine', '1234567890', '123456789', 'ул.Толстого, д.45, кв.10', '87054322345', 1 );
INSERT INTO Organization (version, name, full_name, inn, kpp, address, phone, is_active) VALUES (0, 'Содружество', 'ОАО Содружество', '1432567890', '125436789', 'ул.Пушкина, д.25, кв.3', '87754223355', 1);
INSERT INTO Organization (version, name, full_name, inn, kpp, address, phone, is_active) VALUES (0, 'Сбор', 'ЗАО Сбор', '3214567890', '353456789', 'ул.Королева, д.6, кв.5', '87774323245', 1 );
INSERT INTO Organization (version, name, full_name, inn, kpp, address, phone, is_active) VALUES (0, 'Фараон', 'ОАО Фараон', '4321567890', '543216789', 'пр.Ленина, д.108', '87056677345', 1 );
INSERT INTO Organization (version, name, full_name, inn, kpp, address, phone, is_active) VALUES (0, 'Планета Спорта', 'ООО Планета Спорта', '9898567890', '196216789', 'ул.Садовая, д.19', '87776677878', 1 );

INSERT INTO Office (version, org_id, name, address, is_active) VALUES (0, 1, 'Oasis1', 'ул.Горького д.115, кв.4', 1);
INSERT INTO Office (version, org_id, name, address, is_active) VALUES (0, 1, 'Oasis2', 'ул.Тарана д.85, кв.1', 1);
INSERT INTO Office (version, org_id, name, address, is_active) VALUES (0, 3, 'Сбор3', 'ул.Гагарина д.56, кв.5', 1);
INSERT INTO Office (version, org_id, name, address, is_active) VALUES (0, 5, 'Level Up', 'ул.Гоголя д.96, кв.2', 1);
INSERT INTO Office (version, org_id, name, address, is_active) VALUES (0, 5, 'Титан', 'ул.Победы д.145, кв.1', 1);

INSERT INTO User (version, office_id, country_id, first_name, last_name, middle_name, position, phone, is_identified) VALUES (0, 2, 1, 'Ирина', 'Цветкова', 'Федоровна', 'флорист', '87779564565', 1);
INSERT INTO User (version, office_id, country_id, first_name, last_name, middle_name, position, phone, is_identified) VALUES (0, 3, 1, 'Петр', 'Иванов', 'Петрович', 'менеджер', '87776794565', 1);
INSERT INTO User (version, office_id, country_id, first_name, last_name, middle_name, position, phone, is_identified) VALUES (0, 5, 1, 'Иван', 'Петров', 'Иванович', 'тренер', '87759544577', 1);
INSERT INTO User (version, office_id, country_id, first_name, last_name, middle_name, position, phone, is_identified) VALUES (0, 4, 1, 'Татьяна', 'Лукина', 'Сергеевна', 'администратор', '87779598165', 1);
INSERT INTO User (version, office_id, country_id, first_name, last_name, middle_name, position, phone, is_identified) VALUES (0, 3, 1, 'Игорь', 'Сидоров', 'Сергеевич', 'экономист', '87788754511', 1);

INSERT INTO Doc (user_id, version, doc_type_id, doc_number, doc_date) VALUES (1, 0, '1', '1234567890', '2010-03-20');
INSERT INTO Doc (user_id, version, doc_type_id, doc_number, doc_date) VALUES (2, 0, '1', '0987654321', '2006-10-15');
INSERT INTO Doc (user_id, version, doc_type_id, doc_number, doc_date) VALUES (3, 0, '1', '8976054873', '2011-11-06');
INSERT INTO Doc (user_id, version, doc_type_id, doc_number, doc_date) VALUES (4, 0, '1', '7683952196', '2004-02-17');
INSERT INTO Doc (user_id, version, doc_type_id, doc_number, doc_date) VALUES (5, 0, '1', '9782647321', '2020-06-13');

INSERT INTO Doc_type (version, doc_name, doc_code) VALUES (0, 'Паспорт гражданина Российской Федерации', '21');
INSERT INTO Doc_type (version, doc_name, doc_code) VALUES (0, 'Свидетельство о рождении', '03');
INSERT INTO Doc_type (version, doc_name, doc_code) VALUES (0, 'Военный билет', '07');
INSERT INTO Doc_type (version, doc_name, doc_code) VALUES (0, 'Паспорт иностранного гражданина', '10');
INSERT INTO Doc_type (version, doc_name, doc_code) VALUES (0, 'Вид на жительство в Российской Федерации', '12');

INSERT INTO Country (version, citizenship_name, citizenship_code) VALUES (0, 'Россия', '643');
INSERT INTO Country (version, citizenship_name, citizenship_code) VALUES (0, 'Беларусь', '112');
INSERT INTO Country (version, citizenship_name, citizenship_code) VALUES (0, 'Китай', '156');
INSERT INTO Country (version, citizenship_name, citizenship_code) VALUES (0, 'Казахстан', '398');
INSERT INTO Country (version, citizenship_name, citizenship_code) VALUES (0, 'Киргизия', '417');
