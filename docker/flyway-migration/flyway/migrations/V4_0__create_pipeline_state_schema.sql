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
CREATE TABLE IF NOT EXISTS pipeline_state (
    job_id VARCHAR(225) PRIMARY KEY,
    create_time TIMESTAMP NOT NULL,
    pipeline_name VARCHAR(255) NOT NULL,
    step_status VARCHAR(255) NOT NULL
);
