set verify off
ACCEPT sysPassword CHAR PROMPT 'Enter new password for SYS: ' HIDE
ACCEPT systemPassword CHAR PROMPT 'Enter new password for SYSTEM: ' HIDE
host d:\oracle\product\11.2.0\dbhome_2\bin\orapwd.exe file=d:\oracle\product\11.2.0\dbhome_2\database\PWDorcl.ora force=y
@d:\oracle\admin\orcl\scripts\CreateDB.sql
@d:\oracle\admin\orcl\scripts\CreateDBFiles.sql
@d:\oracle\admin\orcl\scripts\CreateDBCatalog.sql
@d:\oracle\admin\orcl\scripts\lockAccount.sql
@d:\oracle\admin\orcl\scripts\postDBCreation.sql
