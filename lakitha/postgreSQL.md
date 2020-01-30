# postGreSQL

The following is an instructable on how to use PostGreSql 

- Install Postgresql on Ubuntu 
```sudo apt-get install postgresql postgresql-contrib```

- check where postgresql is installed  
```ls /etc/posygresql/10/main/```
   This depends on the version of the posgresql 
   The follwoing should appear 
    ```environment  pg_ctl.conf  pg_hba.conf  pg_ident.conf  postgresql.conf  start.conf```
      The main configuration is on the `postgresql.conf` file 
  
- Cheack Service 
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





