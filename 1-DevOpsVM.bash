#!/bin/bash

psql -p 5432 -h 10.160.1.29 -U postgres -c "DROP DATABASE IF EXISTS crm" 
psql -p 5432 -h 10.160.1.29 -U postgres -c "CREATE DATABASE crm"
psql -p 5432 -h 10.160.1.29 -U postgres -d crm -f ./resources/createCRM.sql

psql -p 5432 -h 10.160.1.29 -U postgres -c "DROP DATABASE IF EXISTS erp"
psql -p 5432 -h 10.160.1.29 -U postgres -c "CREATE DATABASE erp"
psql -p 5432 -h 10.160.1.29 -U postgres -d erp -f ./resources/createErp.sql