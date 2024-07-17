SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
spool d:\oracle\admin\orcl\scripts\CreateDBCatalog.log append
@d:\oracle\product\11.2.0\dbhome_2\rdbms\admin\catalog.sql;
@d:\oracle\product\11.2.0\dbhome_2\rdbms\admin\catblock.sql;
@d:\oracle\product\11.2.0\dbhome_2\rdbms\admin\catproc.sql;
@d:\oracle\product\11.2.0\dbhome_2\rdbms\admin\catoctk.sql;
@d:\oracle\product\11.2.0\dbhome_2\rdbms\admin\owminst.plb;
connect "SYSTEM"/"&&systemPassword"
@d:\oracle\product\11.2.0\dbhome_2\sqlplus\admin\pupbld.sql;
connect "SYSTEM"/"&&systemPassword"
set echo on
spool d:\oracle\admin\orcl\scripts\sqlPlusHelp.log append
@d:\oracle\product\11.2.0\dbhome_2\sqlplus\admin\help\hlpbld.sql helpus.sql;
spool off
spool off
