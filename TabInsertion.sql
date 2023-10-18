-- Заполнение таблицы SevenSuns тестовыми данными
INSERT INTO SevenSuns (name, brightness, position)
VALUES
    ('Солнце 1', 1.0, 'Галактика 1'),
    ('Солнце 2', 0.8, 'Галактика 2'),
    ('Солнце 3', 2.2, 'Галактика 3'),
    ('Солнце 4', 0.9, 'Галактика 4'),
    ('Солнце 5', 0.7, 'Галактика 5'),
    ('Солнце 6', 0.7, 'Галактика 6'),
    ('Солнце 7', 1.2, 'Галактика 7');



-- Заполнение таблицы Spaceships тестовыми данными
INSERT INTO Spaceships (name, speed,direction)
VALUES
    ('Север', 0.75,1),
    ('Юг', 0.9,2),
    ('Запад', 1.4,3),
    ('Восток', 2.9,4);


-- Заполнение таблицы AstronomicalInstruments тестовыми данными
INSERT INTO AstronomicalInstruments (name, type, description)
VALUES
    ('Телескоп 1', 'Оптический', 'Телескоп имеющий 20 кратным приближением'),
    ('Фотокамера 1', 'Фотографический', 'Фотокамера имеющий большим разрешением'),
    ('Тепловизер', 'Фотографический', 'Кратко описание фотокамеры 1');

-- Заполнение таблицы Astronomers тестовыми данными
INSERT INTO Astronomers (first_name, last_name, specialization, contact_info)
VALUES
    ('Иван', 'Иванов', 'Астрономия', 'ivan.ivanov@example.com'),
    ('Петр', 'Петров', 'Астрофизика', 'petr.petrov@example.com'),
    ('Петр', 'Иванов', 'Биология', 'petr.ivanov@example.com'),
    ('Иван', 'Петров', 'Программирование', 'ivan.petrov@example.com'),
    ('Александр', 'Алекстандрович', 'Астроном', 'alex.alex@example.com');




-- Заполнение таблицы AstronomicalEvents тестовыми данными
INSERT INTO AstronomicalEvents (event_type, event_description, event_time, finder_id, tool_id)
VALUES
    ('Событие 1', 'Аномалия', '2023-10-17 12:30:00', 1, 1),
    ('Событие 2', 'Затмение', '2023-10-18 17:45:00', 2, 2),
    ('Событие 3', 'Взрыв звезды', '2023-10-16 20:33:00', 2, 2),
    ('Событие ', 'Радиационный всплеск', '2023-11-12 23:12:00', 2, 2);

-- Заполнение таблицы "События Астрономов" (EventAstronomers) тестовыми данными
INSERT INTO EventAstronomers (event_id, astronomer_id)
VALUES
    (1, 1),  -- Пример связи события с астрономом
    (2, 2);  -- Пример связи события с другим астрономом

-- Заполнение таблицы "События Инструментов" (EventInstruments) тестовыми данными
INSERT INTO EventInstruments (event_id, instrument_id)
VALUES
    (1, 1),  -- Пример связи события с инструментом
    (2, 2);  -- Пример связи события с другим инструментом
