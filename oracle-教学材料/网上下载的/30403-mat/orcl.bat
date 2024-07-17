OLD_UMASK=`umask`
umask 0027
mkdir d:\oracle\admin\orcl\adump
mkdir d:\oracle\admin\orcl\dpdump
mkdir d:\oracle\admin\orcl\pfile
mkdir d:\oracle\cfgtoollogs\dbca\orcl
mkdir d:\oracle\oradata\orcl
mkdir d:\oracle\product\11.2.0\dbhome_2\database
umask ${OLD_UMASK}
set ORACLE_SID=orcl
set PATH=%ORACLE_HOME%\bin;%PATH%
d:\oracle\product\11.2.0\dbhome_2\bin\oradim.exe -new -sid ORCL -startmode manual -spfile 
d:\oracle\product\11.2.0\dbhome_2\bin\oradim.exe -edit -sid ORCL -startmode auto -srvcstart system 
d:\oracle\product\11.2.0\dbhome_2\bin\sqlplus /nolog @d:\oracle\admin\orcl\scripts\orcl.sql
