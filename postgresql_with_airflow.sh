#!/bin/bash

# Install postgresql
sudo apt install postgresql postgresql-contrib

# Create the psql object
sudo -u postgres psql

# Then create the user and database for the airflow (same with the configuration in airflow.cfg)
CREATE USER airflow PASSWORD 'airflow';
CREATE DATABASE airflow;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO airflow;
exit
