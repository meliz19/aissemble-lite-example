---
-- #%L
-- Intelligent Sight and Sound::Docker::Flyway Migration
-- %%
-- Copyright (C) 2021 Booz Allen
-- %%
-- All Rights Reserved. You may not copy, reproduce, distribute, publish, display, 
-- execute, modify, create derivative works of, transmit, sell or offer for resale, 
-- or in any way exploit any part of this solution without Booz Allen Hamilton’s 
-- express written permission.
-- #L%
---
CREATE TABLE IF NOT EXISTS filenames_and_landmarks (
    filename varchar(150) NOT NULL PRIMARY KEY,
    landmarks float ARRAY,
    date_processed varchar(15) NOT NULL,
    subj varchar(150) NOT NULL
);
