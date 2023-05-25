## Database Backup and Restore

PgAdmin Backup and Restore tool provides an easy way to use pg_dump, pg_dumpall, and pg_restore to take backups and create copies of databases or database objects for use in a development environment.

We utilized this feature of PgAdmin to create a database for our project , take a back up of data and share it with other team members to restore the data using the backup .

A step - by - step approach to take a back up and restore  is as follows :-

### Back-up

 1. Open pgAdmin and connect to your PostgreSQL server.
    2.   Expand the server in the Object Browser to view the list of databases.
    3.   Right-click on the database that contains the tables you want to export.![enter image description here](https://github.com/CWCroghan/project-one/blob/Smita/Images/pgadmin_backup_step1.png)
    4.  Go to "Backup" > "Plain" in the context menu. If you want to export the tables along with data, select "Custom" instead of  "Plain" backup.![enter image description here](https://github.com/CWCroghan/project-one/blob/Smita/Images/pgadmin_backup_step2.png)
    5.  In the "Backup Options" tab, choose the desired options such as the output file, format, encoding, etc.
    6.  In the "Dump Options" tab, ensure that the "Only data" or "Only schema" option is unchecked to export both data and schema. 
    7.  Click the "Backup" button to start the export process.
    8. Wait for the backup process to complete. Once finished, you'll have an export file containing the SQL statements for creating the 
    tables and inserting data.

### Restore

 

 1. Open pgAdmin and connect to your PostgreSQL server.
    
    2.  Right-click on the target database where you want to import the backup.
    
    3.  Go to "Restore" > "Database" in the context menu.![enter image description here](https://github.com/CWCroghan/project-one/blob/Smita/Images/pgadmin_restore_step1.png)
    
    4.  In the "Restore Options" tab, specify the backup file to import.![enter image description here](https://github.com/CWCroghan/project-one/blob/Smita/Images/pgadmin_restore_step2.png)
    5. Click the "Restore" button to start the import process.
    6.  Wait for the restore process to complete. Once finished, the backup file's contents will be imported into the specified database

.

    
   
