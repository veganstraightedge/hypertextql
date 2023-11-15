# Table

## General

### File

A table MUST be stored in an HTML file.
A table HTML file MUST have the same name as the table.

```
## An html file for a table named 'users'
users.html
```

---

## Metadata

A table's metadata is information about the table itself.
Not the content of the table. Not the schema of the table.

### Name

A table MUST have a name.
A table's name MUST be stored in the table tag's `id` attribute.

```html
<table id="users">
</table>
```

### Description

A table CAN have a description.
If present, a table's optional description MUST be stored in the `table` tag's child `caption` tag.

```html
<table id="users">
  <caption>All of our users: customers, admins, engineers...</caption>
</table>
```

---

## Schema

A table's schema defines the structure of a table:

- how many columns there are
- what the columns are named
- what datatype each column stores
- whether or not a column requires a value
- whether or not there is a default value for a column

### Head

A table's schema MUST be defined in the `table`'s `thead`.

```html
<table id="users">
  <caption>All of our users: customers, admins, engineers...</caption>

  <thead>
  </thead>
</table>
```

### Row

All columns MUST be wrapped in `tr` tag.
The schema row MUST be wrapped in `thead` tag.
A table MUST have only one schema row.

```html
<table id="users">
  <caption>All of our users: customers, admins, engineers...</caption>

  <thead>
    <tr>
    </tr>
  </thead>
</table>
```

### Columns

Each column MUST be in a `th` tag.

```html
<table id="users">
  <caption>All of our users: customers, admins, engineers...</caption>

  <thead>
    <tr>
      <th></th>
    </tr>
  </thead>
</table>
```

### Column scope

All columns MUST have a `scope` attribute with `value` of `col`.

```html
<table id="users">
  <caption>All of our users: customers, admins, engineers...</caption>

  <thead>
    <tr>
      <th scope="col"></th>
    </tr>
  </thead>
</table>
```

### Column name

All columns MUST have a name.
A column's name MUST be stored in the `th` tag's content.

```html
<table id="users">
  <caption>All of our users: customers, admins, engineers...</caption>

  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">email</th>
      <th scope="col">name</th>
      <th scope="col">username</th>
      <th scope="col">created_at</th>
      <th scope="col">updated_at</th>
    </tr>
  </thead>
</table>
```

### Column slug

All columns MUST have a slug.
A column's slug MUST be stored in the `id` attribute.
A column's slug MUST be a composite of table name and column name joined by an underscore `[table name, "_", column name]`.

```html
<table id="users">
  <caption>All of our users: customers, admins, engineers...</caption>

  <thead>
    <tr>
      <th scope="col" id="users_id">id</th>
      <th scope="col" id="users_email">email</th>
      <th scope="col" id="users_name">name</th>
      <th scope="col" id="users_username">username</th>
      <th scope="col" id="users_created_at">created_at</th>
      <th scope="col" id="users_updated_at">updated_at</th>
    </tr>
  </thead>
</table>
```

### Column type

All columns MUST have a type.
A column's type MUST be stored in the `th` tag's `data-hypertextql-type` data attribute.

```html
<table id="users">
  <caption>All of our users: customers, admins, engineers...</caption>

  <thead>
    <tr>
      <th scope="col" id="users_id" data-hypertextql-type="integer">id</th>
      <th scope="col" id="users_email" data-hypertextql-type="string">email</th>
      <th scope="col" id="users_name" data-hypertextql-type="string">name</th>
      <th scope="col" id="users_username" data-hypertextql-type="string">username</th>
      <th scope="col" id="users_created_at" data-hypertextql-type="datetime">created_at</th>
      <th scope="col" id="users_updated_at" data-hypertextql-type="datetime">updated_at</th>
    </tr>
  </thead>
</table>
```

---

## Content

TODO

<!-- TEMP... -->
<!-- Content rows MUST be in a tr tag -->
<!-- Content rows MUST be wrapped in a tbody tag -->
<!-- Content rows MUST have the same number of column td tags as the header row has th tags -->

<tbody>
  <tr>
    <td>1</td>
    <td>veganstraightedge@gmail.com</td>
    <td>Shane Becker</td>
    <td><time datetime="2013-05-29T15:48:47+07:00">Wed May 29 15:48:47 +0700 2013</time></td>
    <td><time datetime="2013-05-29T15:48:47+07:00">Wed May 29 15:48:47 +0700 2013</time></td>
  </tr>
  <tr>
    <td>2</td>
    <td>bob@example.com</td>
    <td>Bob Sackamano</td>
    <td><time datetime="2023-11-14T16:37:18+07:00">Tue Nov 16 15:37:18 +0700 2013</time></td>
    <td><time datetime="2023-11-14T16:37:18+07:00">Tue Nov 16 15:37:18 +0700 2013</time></td>
  </tr>
</tbody>
<!-- ...TEMP -->
