-- liquibase formatted sql

-- changeset soto:create_parcels_table
CREATE TABLE parcels (
    id SERIAL PRIMARY KEY,
    tracking_number VARCHAR(100) NOT NULL UNIQUE,
    recipient_name VARCHAR(255) NOT NULL,
    weight_kg DECIMAL(5,2),
    status VARCHAR(50) DEFAULT 'PENDING',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- rollback DROP TABLE parcels;
