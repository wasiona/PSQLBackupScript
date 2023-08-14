#!/bin/bash 


# Set the database name and the backup file name
DB_NAME="picka"
BACKUP_FILE="database_backup.sql"
CURRENT_DATE=$(date +"%Y_%m_%d_%I_%M") #add secs 

# Set the username and password for the database
DB_USERNAME="kurac"

# Don't ask for a password when connecting 
# Dump the database to a file 
PGPASSFILE="/home/meowmeow/.pgpass" 

pg_dump -h localhost -p 5432 -U $DB_USERNAME -d $DB_NAME > /home/meowmeow/Desktop/pg-backup/"${BACKUP_FILE}"-"${CURRENT_DATE}"

echo "PGPASSFILE: $PGPASSFILE"
echo "DB_USERNAME: $DB_USERNAME"
echo "DB_NAME: $DB_NAME"

