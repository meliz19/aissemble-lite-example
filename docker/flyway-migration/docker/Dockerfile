ARG FLYWAY_VERSION

FROM flyway/flyway:${FLYWAY_VERSION}

# Copy the migration files into the expected directory for Flyway to perform the migrations
COPY ../flyway/migrations/ /flyway/sql/