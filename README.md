# Dependencies

* Rails version: 5.2.4.4

* Ruby version:  2.7.2

### Setup instruction

* Run `bundle install`

* Run `rake db:migrate`

* Run `rake db:seed`

### SQLITE3 command

* This projet is run on SQLITE3 for simplicity

* Start sqlite console: `sqlite3 db/development.sqlite3`

* Show all tables: `.tables`

* Show columns details: `PRAGMA table_info(column_name);`

* Truncate table: `DELETE from table_name;`
