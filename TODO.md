# TODO list

Temporarily in Markdown file in repo because my network connectvity is intermittent at the moment.
All of these will get extracted to GitHub Issues in the repo.

- rename repo/project to `htmql` ?
  - `HypertextQL` ?

- rename default branch from `master` to `main`
- create `htmql` gem with bundler
- push `0.0.1` gem to rubygems.org to hold the name `htmql`
- document html for database tables
  - tables, captions for descriptions, th for column names, tr for rows, td for column in a row, a tags for foreign keys/association references
  - consider what native html attributes are useful
  - consider what aria-* attributes are useful
  - augment those native html attributes with data-* attributes
- write an htmql spec document
- write automated specs for that spec document

- consider gem name, class/module name, file/folder structure:
  - html-database
  - htmlql
  - HypertextQL **CURRENT FAVORITE**
    - `HypertextQL.establish_connection`
    - `HypertextQL.parse(table: "users")`
    - `HypertextQL.table(:users).delete_row(id: 37)`
  - htmql **CURRENT FAVORITE**
    - `HTMQL.establish_connection`
    - `HTMQL.parse(table: "users")`
    - `HTMQL.table(:users).delete_row(id: 37)`
  - HTMLDB
  - htmql
  - html_db
  - Html_Db
  - HtmlDb
  - HtmlDB

- repos:
  - htmql: spec definition and reference implementation (Rails ActiveRecord gem of same name: htmql)

- consider adaptor libaries for interfacing with an htmql db
  - htmql-rails (for ActiveRecord interfacing with an htmql db)
    - uses Nokogiri to read/write HTML document/s
  - htmql-sql ?  (for SQL interfacing with an htmql db) — i don't wanna write any SQL stuff
    - uses Nokogiri to read/write HTML document/s ?
  - htmql.js  (for JavaScript interfacing with an htmql db)
    - uses jQuery/native JS to read/write HTML document/s

- consider an htmql schema format
  - like rails' `db/schema.rb` / `db/structure.sql` file
  - `HTMQL::Schema`

- use `rel` attributes on links
- use `lang` in `html` tag
