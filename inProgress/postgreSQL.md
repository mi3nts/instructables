# postGreSQL

The following is an instructable on how to use PostGreSql 

## Basics
- Install Postgresql on Ubuntu 
```sudo apt-get install postgresql postgresql-contrib```

- Check where postgresql is installed  
```ls /etc/posygresql/10/main/```
   This depends on the version of the posgresql 
   The follwoing should appear 
    ```environment  pg_ctl.conf  pg_hba.conf  pg_ident.conf  postgresql.conf  start.conf```
      The main configuration is on the `postgresql.conf` file 
  
- Check Service 
<pre>service postgresql status
<font color="#8AE234"><b>●</b></font> postgresql.service - PostgreSQL RDBMS
   Loaded: loaded (/lib/systemd/system/postgresql.service; enabled; vendor preset: enabled)
   Active: <font color="#8AE234"><b>active (exited)</b></font> since Wed 2020-01-29 17:17:29 CST; 17h ago
 Main PID: 1684 (code=exited, status=0/SUCCESS)
    Tasks: 0 (limit: 4915)
   CGroup: /system.slice/postgresql.service

Jan 29 17:17:29 teamlary-Live systemd[1]: Starting PostgreSQL RDBMS...
Jan 29 17:17:29 teamlary-Live systemd[1]: Started PostgreSQL RDBMS.
</pre>

- Check manual:
```man psql```

- Login in as postrgres
 In order to work with postgresql you need to have a user authenticated to use postgresql. When you login as postgres and type in `psql` it redirects you to command line interface made to interact with postgresql databases. The user postgres has the highest(super user) previledges.  
 
 - login in as postgres 
 <pre>sudo su postgres
[sudo] password for teamlary: 
postgres@teamlary-Live:/etc/postgresql/10/main$ 
</pre>

- Command line tool for postgres 
<pre>postgres@teamlary-Live:/etc/postgresql/10/main$ psql
psql (10.10 (Ubuntu 10.10-0ubuntu0.18.04.1))
Type &quot;help&quot; for help.
postgres=# 
</pre>

- Checking the DBs present
<pre>postgres=# \l
                                  List of databases
   Name    |  Owner   | Encoding |   Collate   |    Ctype    |   Access privileges   
-----------+----------+----------+-------------+-------------+-----------------------
 postgres  | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | 
 template0 | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
           |          |          |             |             | postgres=CTc/postgres
 template1 | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
           |          |          |             |             | postgres=CTc/postgres
(3 rows)
</pre>

-  Checking the users present 
<pre>postgres=# \du
                                   List of roles
 Role name |                         Attributes                         | Member of 
-----------+------------------------------------------------------------+-----------
 postgres  | Superuser, Create role, Create DB, Replication, Bypass RLS | {}
</pre>

- Change user PW:
<pre>postgres=# ALTER USER postgres WITH PASSWORD &apos;teamlary&apos;;
ALTER ROLE
</pre>

- Create Users:
<pre>postgres=# CREATE USER teamlary WITH PASSWORD &apos;teamlary&apos;; 
CREATE ROLE
</pre>

- Changing Previledges for users:
<pre>postgres=# ALTER USER teamlary with SUPERUSER;
ALTER ROLE</pre>

- Droping Users:
<pre>postgres=# DROP USER teamlaryTest;
DROP ROLE
</pre>

- Quit psql Command Line:
<pre>postgres-# \q
</pre>

## PGAdmin App 

- Instaling the PQAdmin client:
This can be found on Ubuntu software App

- By default you can add the following to manage the postgres database 





















