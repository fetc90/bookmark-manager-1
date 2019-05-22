# Bookmark Manager


## User story 1
```
As a user
So that I can see my regular sites
I want to see a list of all my bookmarks
```
## Domain model
![domain_model](./images/domain_model.jpg)

## User story 2
```
As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager
```

### To set up the database

1. Connect to `psql`
2. Create the database using the `psql` command `CREATE DATABASE bookmark_manager`;
3. Connect to the database using the `psql` command `\c bookmark_manager;`
4. Run the query we have saved in the file `01_create_bookmarks_table.sql`

### To run the Bookmark Manager app

`rackup`

To view bookmarks, navigate to `localhost:9292/bookmarks`.


Object | Message
-|-
User
Bookmark | Add
