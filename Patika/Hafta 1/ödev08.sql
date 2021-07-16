-- 1.test veritabanınızda employee isimli sütun bilgileri id(INTEGER),
-- name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
	email VARCHAR(50),
);


-- 2. Oluşturduğumuz employee tablosuna 'Mockaroo' servisini 
-- kullanarak 50 adet veri ekleyelim.

-- 50 tane insert oluşturuldu ilk 3 ve son 3 insert şu şekilde:
insert into MOCK_DATA (id, first_name, birthday, email) values (1, 'Ursuline', '2006-01-31', 'umozzetti0@tiny.cc');
insert into MOCK_DATA (id, first_name, birthday, email) values (2, 'Wendi', '2016-08-21', 'wcaldecourt1@blogspot.com');
insert into MOCK_DATA (id, first_name, birthday, email) values (3, 'Linea', '2020-11-17', 'lfarnhill2@pen.io');
..
insert into MOCK_DATA (id, first_name, birthday, email) values (48, 'Aurelia', '2018-04-17', 'alingwood1b@pagesperso-orange.fr');
insert into MOCK_DATA (id, first_name, birthday, email) values (49, 'Rozina', '2007-08-02', 'rposselow1c@uiuc.edu');
insert into MOCK_DATA (id, first_name, birthday, email) values (50, 'Tully', '2003-01-30', 'tbramsom1d@list-manage.com');


-- 3. Sütunların her birine göre diğer sütunları güncelleyecek
-- 5 adet UPDATE işlemi yapalım.
UPDATE employee
SET name = 'Update_t'
WHERE name LIKE 'T%';

UPDATE employee
SET email = 'Update_email_last'
WHERE name LIKE '%com';

UPDATE employee
SET name = '30th Index'
WHERE id = 30;

UPDATE employee
SET email = 'Update_email'
WHERE email LIKE 'a%';

UPDATE employee
SET name = 'Update_id'
WHERE id > 30;


-- 4. Sütunların her birine göre ilgili satırı silecek 
-- 5 adet DELETE işlemi yapalım.
DELETE FROM employee
WHERE name LIKE 'T%';

DELETE FROM employee
WHERE name LIKE '%com';

DELETE FROM employee
WHERE id = 30;

DELETE FROM employee
WHERE email LIKE 'a%';

DELETE FROM employee
WHERE id > 30;