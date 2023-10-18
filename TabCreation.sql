-- Удаление существующих таблиц, если они существуют
DROP TABLE IF EXISTS Astronomers, AstronomicalInstruments, AstronomicalEvents, Spaceships, SevenSuns,EventAstronomers,EventInstruments;

-- Создание таблицы для Семи Солнц
CREATE TABLE SevenSuns (
    sun_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    brightness REAL,
    position VARCHAR(255)
);

-- Создание таблицы для Космических кораблей
CREATE TABLE Spaceships (
    spaceship_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    speed REAL,
    direction INTEGER REFERENCES SevenSuns(sun_id) ON DELETE SET NULL
);

-- Создание таблицы для Астрономических событий
CREATE TABLE AstronomicalEvents (
    event_id SERIAL PRIMARY KEY,
    event_type VARCHAR(255),
    event_description TEXT,
    event_time TIMESTAMP,
    finder_id INTEGER,  -- Идентификатор астронома, выполнившего открытие
    tool_id INTEGER      -- Идентификатор инструмента
);

-- Создание таблицы для Астрономических инструментов
CREATE TABLE AstronomicalInstruments (
    instrument_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(255),
    description TEXT
);

-- Создание таблицы для Астрономов
CREATE TABLE Astronomers (
    astronomer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    specialization VARCHAR(255),
    contact_info TEXT
);

-- Создание таблицы "События Астрономов" (EventAstronomers)
CREATE TABLE EventAstronomers (
    event_astronomer_id SERIAL PRIMARY KEY,
    event_id INTEGER REFERENCES AstronomicalEvents(event_id),
    astronomer_id INTEGER REFERENCES Astronomers(astronomer_id)
);

-- Создание таблицы "События Инструментов" (EventInstruments)
CREATE TABLE EventInstruments (
    event_instrument_id SERIAL PRIMARY KEY,
    event_id INTEGER REFERENCES AstronomicalEvents(event_id),
    instrument_id INTEGER REFERENCES AstronomicalInstruments(instrument_id)
);
