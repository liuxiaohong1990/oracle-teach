SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
spool d:\oracle\admin\orcl\scripts\postDBCreation.log append
execute DBMS_AUTO_TASK_ADMIN.disable();
select 'utl_recomp_begin: ' || to_char(sysdate, 'HH:MI:SS') from dual;
execute utl_recomp.recomp_serial();
select 'utl_recomp_end: ' || to_char(sysdate, 'HH:MI:SS') from dual;
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
create spfile='d:\oracle\product\11.2.0\dbhome_2\database\spfileorcl.ora' FROM pfile='d:\oracle\admin\orcl\scripts\init.ora';
shutdown immediate;
connect "SYS"/"&&sysPassword" as SYSDBA
startup ;
spool off
exit;
