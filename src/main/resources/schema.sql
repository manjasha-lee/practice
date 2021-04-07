CREATE TABLE IF NOT EXISTS Organization (
    id         INTEGER              COMMENT 'Уникальный идентификатор' PRIMARY KEY AUTO_INCREMENT,
    version    INTEGER     NOT NULL COMMENT 'Служебное поле hibernate',
    name       VARCHAR(20) NOT NULL COMMENT 'Имя',
    full_name  VARCHAR(50) NOT NULL COMMENT 'Полное имя',
    inn        VARCHAR(10) NOT NULL COMMENT 'ИHH',
    kpp        VARCHAR(9)  NOT NULL COMMENT 'КПП',
    address    VARCHAR(50) NOT NULL COMMENT 'Адрес',
    phone      VARCHAR(11)          COMMENT 'Телефон',
    is_active  SMALLINT             COMMENT 'Активен'
);
COMMENT ON TABLE Organization IS 'Организация';

CREATE TABLE IF NOT EXISTS Office (
    id         INTEGER              COMMENT 'Уникальный идентификатор' PRIMARY KEY AUTO_INCREMENT,
    version    INTEGER     NOT NULL COMMENT 'Служебное поле hibernate',
    org_id     INTEGER     NOT NULL COMMENT 'Уникальный идентификатор организации',
    name       VARCHAR(20) NOT NULL COMMENT 'Имя',
    address    VARCHAR(50) NOT NULL COMMENT 'Адрес',
    is_active  SMALLINT             COMMENT 'Активен'
);
COMMENT ON TABLE Office IS 'Офис';

CREATE TABLE IF NOT EXISTS User (
    id            INTEGER              COMMENT 'Уникальный идентификатор' PRIMARY KEY AUTO_INCREMENT,
    version       INTEGER     NOT NULL COMMENT 'Служебное поле hibernate',
    office_id     INTEGER     NOT NULL COMMENT 'Уникальный идентификатор офиса',
    country_id    INTEGER              COMMENT 'Уникальный идентификатор страны',
    first_name    VARCHAR(20) NOT NULL COMMENT 'Имя',
    last_name     VARCHAR(30)          COMMENT 'Фамилия',
    middle_name   VARCHAR(25)          COMMENT 'Отчество',
    position      VARCHAR(20) NOT NULL COMMENT 'Должность',
    phone         VARCHAR(11)          COMMENT 'Телефон',
    is_identified SMALLINT             COMMENT 'Идентифицирован'
);
COMMENT ON TABLE User IS 'Пользователь';

CREATE TABLE IF NOT EXISTS Doc (
    user_id     INTEGER     NOT NULL COMMENT 'Уникальный идентификатор пользователя' PRIMARY KEY,
    version     INTEGER     NOT NULL COMMENT 'Служебное поле hibernate',
    doc_type_id INTEGER     NOT NULL COMMENT 'Уникальный идентификатор типа документа',
    doc_number  VARCHAR(20)          COMMENT 'Номер документа',
    doc_date    DATE                 COMMENT 'Дата выдачи документа'
);
COMMENT ON TABLE Doc IS 'Документ';

CREATE TABLE IF NOT EXISTS Doc_type (
    id          INTEGER     NOT NULL COMMENT 'Уникальный идентификатор' PRIMARY KEY AUTO_INCREMENT,
    version     INTEGER     NOT NULL COMMENT 'Служебное поле hibernate',
    doc_name    VARCHAR(50)          COMMENT 'Наименование документа',
    doc_code    VARCHAR(2)           COMMENT 'Код документа'
    );
COMMENT ON TABLE Doc_type IS 'Тип документа';

CREATE TABLE IF NOT EXISTS Country (
   id               INTEGER     NOT NULL COMMENT 'Уникальный идентификатор' PRIMARY KEY AUTO_INCREMENT,
   version          INTEGER     NOT NULL COMMENT 'Служебное поле hibernate',
   citizenship_name VARCHAR(50)          COMMENT 'Наименование страны',
   citizenship_code VARCHAR(3)           COMMENT 'Код страны'
);
COMMENT ON TABLE Country IS 'Страна';



CREATE INDEX IX_Organization_id ON Office (org_id);
ALTER TABLE Office ADD FOREIGN KEY (org_id) REFERENCES Organization(id);

CREATE INDEX IX_Office_id ON User (office_id);
ALTER TABLE User ADD FOREIGN KEY (office_id) REFERENCES Office(id);

CREATE INDEX IX_Doc_id ON Doc (user_id);
ALTER TABLE Doc ADD FOREIGN KEY (user_id) REFERENCES User(id);

ALTER TABLE User ADD FOREIGN KEY (country_id) REFERENCES Country(id);

ALTER TABLE Doc ADD FOREIGN KEY (doc_type_id) REFERENCES Doc_type(id);



