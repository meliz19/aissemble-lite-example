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
CREATE TABLE IF NOT EXISTS pain_and_demographics (
    subj varchar(150),
    video_id varchar(15),
    s1_painnow integer NOT NULL, 
    s1_paintime integer NOT NULL, 
    s1_activity integer NOT NULL, 
    s1_mood integer NOT NULL, 
    s1_walking integer NOT NULL, 
    s1_work integer NOT NULL, 
    s1_relationships integer NOT NULL, 
    s1_sleep integer NOT NULL, 
    s1_enjoyment integer NOT NULL, 
    gender integer NOT NULL, 
    skin integer NOT NULL, 
    pain_class integer NOT NULL,
    PRIMARY KEY (subj, video_id)
    );