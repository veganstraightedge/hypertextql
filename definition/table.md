# Database Table

## File

A database table MUST be stored in an HTML file.
A database table HTML file MUST have an `.html` file extension.
A database table HTML file MUST have the same name as the database table.

```
# An HTML file for a database table named 'users'
users.html
```

## Database heading

A database table HTML file MUST have a heading `h1` with the name of the database as the content of the tag.

```html
<h1>blog</h1>
```

## Link to database root

A database table HTML file MUST have a link `a` to the database `index.html` HTML file at the root of the folder.
The link to the database `index.html` HTML file MUST be inside of an heading `h1` tag.

```html
<h1><a href="/blog">blog</a></h1>
```

The link to the database `index.html` HTML file at the root of the folder MUST include a `rel` attribute with a value of `home`. [rel-home](https://microformats.org/wiki/rel-home)

```html
<h1><a href="/blog" rel="home">blog</a></h1>
```

A database table HTML file MUST have only one link `a` to the database `index.html` HTML file at the root of the folder.
A database table HTML file MUST have only one `h1` heading.

## Table heading

A database table HTML file MUST have a heading `h2` with the database table name as the content of the tag.
A database table HTML file MUST have only one `h2` heading.

```html
<h2>users</h2>
```

## Table tag

A database table HTML file MUST contain one HTML `table`.

```html
<table>
</table>
```

Each HTML  `table` for a database table MUST contain `class` attribute with a value of `hypertextql-table`

```html
<table class="hypertextql-table">
</table>
```

A database table HTML file MUST contain only one HTML `table` with the `class` attribute with a value of `hypertextql-table`.

---

## Metadata

A database table's metadata is information about the database table itself.
Not the content of the database table.
Not the schema of the database table.

## Name

A database table MUST have a name.
A database table's name MUST be stored in the `table` tag's `id` attribute.
A database table's `table` tag `id` attribute value MUST be the same as the filename, without the file extension.

```html
<table class="hypertextql-table" id="users">
</table>
```

A database table name with multiple words SHOULD use underscores as a word separator.

```
post_tags
status_codes
book_shelves
```

## Description

A database table CAN have a description.
If present, a database table's optional description MUST be stored in the `table` tag's child `caption` tag.
If included, the `caption` tag must be the first child of its parent `table` tag.

```html
<table class="hypertextql-table" id="users">
  <caption>All of our users: customers, admins, engineers...</caption>
</table>
```

---

## Schema

A database table's schema defines the structure of a table:

- how many columns there are
- what the columns are named
- what datatype each column stores
- whether or not a column requires a value
- whether or not there is a default value for a column

## Head

A database table's schema MUST be defined in the `table`'s `thead`.

```html
<table class="hypertextql-table" id="users">
  <caption>All of our users: customers, admins, engineers...</caption>

  <thead>
  </thead>
</table>
```

## Row

All database table schema columns MUST be wrapped in a `tr` tag.
The database table schema `tr` row MUST be wrapped in `thead` tag.
A database table's `table` tag MUST have only one schema `tr` row.

```html
<table class="hypertextql-table" id="users">
  <caption>All of our users: customers, admins, engineers...</caption>

  <thead>
    <tr>
    </tr>
  </thead>
</table>
```

## Columns

Each database table schema column MUST be in a `th` tag.

```html
<table class="hypertextql-table" id="users">
  <caption>All of our users: customers, admins, engineers...</caption>

  <thead>
    <tr>
      <th></th>
    </tr>
  </thead>
</table>
```

### Column scope

All database table schema columns MUST have a `scope` attribute with `value` of `col`.

```html
<table class="hypertextql-table" id="users">
  <caption>All of our users: customers, admins, engineers...</caption>

  <thead>
    <tr>
      <th scope="col"></th>
    </tr>
  </thead>
</table>
```

### Column name

All database table schema columns MUST have a name.
A database table schema column's name MUST be stored in the `th` tag's content.

```html
<table class="hypertextql-table" id="users">
  <caption>All of our users: customers, admins, engineers...</caption>

  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">email</th>
      <th scope="col">name</th>
      <th scope="col">username</th>
      <th scope="col">bio</th>
      <th scope="col">created_at</th>
      <th scope="col">updated_at</th>
    </tr>
  </thead>
</table>
```

### Column slug

All database table schema columns MUST have a slug.
A database table schema column's slug MUST be stored in the `id` attribute.
A database table schema column's slug MUST be a composite of table name and column name joined by an underscore `[table name, "_", column name]`.

```html
<table class="hypertextql-table" id="users">
  <caption>All of our users: customers, admins, engineers...</caption>

  <thead>
    <tr>
      <th scope="col" id="users_id">id</th>
      <th scope="col" id="users_email">email</th>
      <th scope="col" id="users_name">name</th>
      <th scope="col" id="users_username">username</th>
      <th scope="col" id="users_bio">bio</th>
      <th scope="col" id="users_created_at">created_at</th>
      <th scope="col" id="users_updated_at">updated_at</th>
    </tr>
  </thead>
</table>
```

### Column type

All database table schema columns MUST have a type.
A database table schema column's datatype MUST be stored in the `th` tag's `data-hypertextql-type` data attribute.

```html
<table class="hypertextql_table" id="users">
  <caption>All of our users: customers, admins, engineers...</caption>

  <thead>
    <tr>
      <th scope="col" id="users_id"         data-hypertextql-type="integer">id</th>
      <th scope="col" id="users_email"      data-hypertextql-type="string">email</th>
      <th scope="col" id="users_name"       data-hypertextql-type="string">name</th>
      <th scope="col" id="users_username"   data-hypertextql-type="string">username</th>
      <th scope="col" id="users_bio"        data-hypertextql-type="text">bio</th>
      <th scope="col" id="users_created_at" data-hypertextql-type="datetime">created_at</th>
      <th scope="col" id="users_updated_at" data-hypertextql-type="datetime">updated_at</th>
    </tr>
  </thead>
</table>
```

### Column datatypes

A database table schema column's datatype must be one of these allowed types:

- `integer`
- `string`
- `text`
- `datetime`
- TKTK: add more types

---

## Table rollup schema (what is a better name?)

TKTK: write up optional `tfoot` with table information. Column counts, etc. Think about this more.

> The `<tfoot>` HTML element encapsulates a set of table rows (`<tr>` elements), indicating that they comprise the foot of a table with information about the table's columns.
> This is usually a summary of the columns, e.g., a sum of the given numbers in a column.
> — [MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Reference/Elements/tfoot)

## Footer

TKTK

MUST be wrapped in a `tfoot` tag.

## Row

TKTK
MUST be a `tr` tag for each rollup rows.

## Columns

TKTK
MUST have `th[scope=row]` tag as first tag before `td` tags.
TKTK does this mean there needs to be a blank column in `tbody` as the first column?

MUST be a `td` for each column content value.

---

## Content

TEMP...
Content rows MUST be in a `tr` tag.
Content rows MUST be wrapped in a `tbody` tag.
Content rows MUST have the same number of column `td` tags as `th` tags in the schema header `thead` row `tr`.
...TEMP

TKTK Link from foreign key to table page and table row
TKTK [rel=canonical]
TKTK https://microformats.org/wiki/rel-canonical

```html
<tbody>
  <tr id="users_1">
    <td id="users_1_id">1</td>
    <td id="users_1_email">veganstraightedge@gmail.com</td>
    <td id="users_1_name">Shane Becker</td>
    <td id="users_1_username">Midwest grown. Rubyist. Creator of HypertextQL.</td>
    <td id="users_1_bio"><time datetime="2013-05-29T15:48:47+07:00">Wed May 29 15:48:47 +0700 2013</time></td>
    <td id="users_1_created_at"><time datetime="2013-05-29T15:48:47+07:00">Wed May 29 15:48:47 +0700 2013</time></td>
    <td id="users_1_updated_at"><time datetime="2013-05-29T16:23:19+07:00">Wed May 29 16:23:19 +0700 2013</time></td>
  </tr>

  <tr id="users_2">
    <td id="users_2_id">2</td>
    <td id="users_2_email">bob@example.com</td>
    <td id="users_2_name">Bob Sackamano</td>
    <td id="users_2_username">A harebrained character on Seinfeld, never seen on screen, only mentioned by Kramer.</td>
    <td id="users_2_bio"><time datetime="2023-11-14T16:37:18+07:00">Tue Nov 16 15:37:18 +0700 2013</time></td>
    <td id="users_2_created_at"><time datetime="2023-11-14T16:37:18+07:00">Tue Nov 16 15:37:18 +0700 2013</time></td>
    <td id="users_2_updated_at"><time datetime="2023-11-14T16:42:56+07:00">Tue Nov 16 15:42:56 +0700 2013</time></td>
  </tr>
</tbody>
```
