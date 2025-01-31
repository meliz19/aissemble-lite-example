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
CREATE TABLE IF NOT EXISTS audio_features (
    subj varchar(150),
    video_id varchar(15),
    chunk boolean NOT NULL,
    filename varchar(150) NOT NULL PRIMARY KEY,   
    features float ARRAY[25] NOT NULL
    );