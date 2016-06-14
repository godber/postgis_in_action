# PostGIS in Action Notes

This repository contains my notes from working through the
[PostGIS in Action](http://www.postgis.us/).

[Vagrant](https://www.vagrantup.com/) is used to bootstrap a PostgreSQL with
PostGIS environment to simplify getting started.  Steps to getting started are:

* [Install Vagrant](https://www.vagrantup.com/docs/installation/)
* Clone the repo

```
git clone https://github.com/godber/postgis_in_action.git
cd postgis_in_action
```

* Launch Vagrant

```
vagrant init
```

* Setup the following environment variables to make accessing PostgreSQL
  on the vagrant box more convenient:

```
export PGUSER=postgis PGPASSWORD=postgispass PGHOST=localhost PGPORT=15432 \
       PGDATABASE=postgis_in_action
```


* PostgreSQL can now be interacted with on the command line as follows:

```
psql
```

* Now you can load the various samples in the chapter subdirectories:

```
psql -f ch01/listing1.2.sql
psql -f ch01/listing1.3.sql
```

Keep in mind, the examples throughout the book tend to require earlier listings
to be executed.