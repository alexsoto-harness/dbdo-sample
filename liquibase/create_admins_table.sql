-- liquibase formatted sql

-- changeset soto:create_admins_table
CREATE TABLE admins (
    id UUID PRIMARY KEY,
    username VARCHAR(50)
);

-- rollback DROP TABLE admins;

