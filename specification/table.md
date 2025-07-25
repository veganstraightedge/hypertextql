[HypertextQL specification](README.md)

# Database Table

## File

A database table MUST be stored in an HTML file.
A database table HTML file MUST have an `.html` file extension.
A database table HTML file MUST have the same name as the database table.

```
# An HTML file for a database table named 'users'
users.html
```

## Database

The database that table is in.

### Database heading

A database table HTML file MUST have a heading `h1` with the name of the database as the content of the tag.

```html
<h1>blog</h1>
```

### Link to database root

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

## Metadata

A database table's metadata is information about the database table itself.
Not the content of the database table.
Not the schema of the database table.

### Name

A database table MUST have a name.
A database table's name MUST be stored in the `table` tag's `id` attribute.
A database table's `table` tag `id` attribute value MUST be the same as the filename, without the file extension.

```html
<table class="hypertextql-table" @id="users">
</table>
```

A database table name with multiple words SHOULD use underscores as a word separator.

```
post_tags
status_codes
book_shelves
```

### Name heading

A database table HTML file MUST have a heading `h2` with the database table name as the content of the tag.
A database table HTML file MUST have only one `h2` heading.

```html
<h2>users</h2>
```


### Description

A database table MAY have a description.
If present, a database table's optional description MUST be stored in the `table` tag's child `caption` tag.
If included, the `caption` tag must be the first child of its parent `table` tag.

```html
<table class="hypertextql-table" @id="users">
  <caption>All of our users: authors, editors, publishers, admins...</caption>
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

### Table tag

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

### Head

A database table's schema MUST be defined in the `table` tag `thead` tag.

```html
<table class="hypertextql-table" @id="users">
  <caption>All of our users: authors, editors, publishers, admins...</caption>

  <thead>
  </thead>
</table>
```

### Row

All database table schema columns MUST be wrapped in a `tr` tag.
The database table schema `tr` row MUST be wrapped in `thead` tag.
A database table's `table` tag MUST have only one schema `tr` row.

```html
<table class="hypertextql-table" @id="users">
  <caption>All of our users: authors, editors, publishers, admins...</caption>

  <thead>
    <tr>
    </tr>
  </thead>
</table>
```

### Columns

Each database table schema column MUST be in a `th` tag.

```html
<table class="hypertextql-table" @id="users">
  <caption>All of our users: authors, editors, publishers, admins...</caption>

  <thead>
    <tr>
      <th></th>
    </tr>
  </thead>
</table>
```

#### Column scope

All database table schema columns MUST have a `scope` attribute with `value` of `col`.

```html
<table class="hypertextql-table" @id="users">
  <caption>All of our users: authors, editors, publishers, admins...</caption>

  <thead>
    <tr>
      <th scope="col"></th>
    </tr>
  </thead>
</table>
```

#### Column name

All database table schema columns MUST have a name.
A database table schema column's name MUST be stored in the `th` tag's content.

```html
<table class="hypertextql-table" @id="users">
  <caption>All of our users: authors, editors, publishers, admins...</caption>

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

#### Column slug

All database table schema columns MUST have a slug.
A database table schema column slug MUST be stored in the `th` tag `id` attribute.
A database table schema column slug MUST be a composite of the _database table name_ and a _column name_ joined by an `[table name, "_", column name]`.
For example, `users_id`, `users_email`, etc.

```html
<table class="hypertextql-table" @id="users">
  <caption>All of our users: authors, editors, publishers, admins...</caption>

  <thead>
    <tr>
      <th scope="col" @id="users_id">id</th>
      <th scope="col" @id="users_email">email</th>
      <th scope="col" @id="users_name">name</th>
      <th scope="col" @id="users_username">username</th>
      <th scope="col" @id="users_bio">bio</th>
      <th scope="col" @id="users_created_at">created_at</th>
      <th scope="col" @id="users_updated_at">updated_at</th>
    </tr>
  </thead>
</table>
```

#### Column type

All database table schema columns MUST have a type.
A database table schema column datatype MUST be stored in the `th` tag's `data-hypertextql-type` data attribute.

```html
<table class="hypertextql_table" @id="users">
  <caption>All of our users: authors, editors, publishers, admins...</caption>

  <thead>
    <tr>
      <th scope="col" @id="users_id"         data-hypertextql-type="integer">id</th>
      <th scope="col" @id="users_email"      data-hypertextql-type="string">email</th>
      <th scope="col" @id="users_name"       data-hypertextql-type="string">name</th>
      <th scope="col" @id="users_username"   data-hypertextql-type="string">username</th>
      <th scope="col" @id="users_bio"        data-hypertextql-type="text">bio</th>
      <th scope="col" @id="users_created_at" data-hypertextql-type="datetime">created_at</th>
      <th scope="col" @id="users_updated_at" data-hypertextql-type="datetime">updated_at</th>
    </tr>
  </thead>
</table>
```

### Primary key column

A database table schema MUST specify one database table schema column as the _primary key_.
A _primary key_ MUST be defined on a database table schema column `th` tag in the `class` attribute with a value of `hypertextql_primary_key`.

```html
<table class="hypertextql_table" @id="users">
  <caption>All of our users: authors, editors, publishers, admins...</caption>

  <thead>
    <tr>
      <th scope="col" @id="users_id"         data-hypertextql-type="integer" class="hypertextql_primary_key">id</th>
      <th scope="col" @id="users_email"      data-hypertextql-type="string">email</th>
      <th scope="col" @id="users_name"       data-hypertextql-type="string">name</th>
      <th scope="col" @id="users_username"   data-hypertextql-type="string">username</th>
      <th scope="col" @id="users_bio"        data-hypertextql-type="text">bio</th>
      <th scope="col" @id="users_created_at" data-hypertextql-type="datetime">created_at</th>
      <th scope="col" @id="users_updated_at" data-hypertextql-type="datetime">updated_at</th>
    </tr>
  </thead>
</table>
```

#### Column datatypes

A database table schema column datatype must be one of the defined [data types](datatypes/README.md).

Or one of the [PostgreSQL datatypes](datatypes/postgresql/README.md).

---

## Content

The content of a database table is what is in each record, not the schema of the database table.
The content of a database table MUST be inside of the `tbody` tag inside of the `table` tag.

```html
<table class="hypertextql_table" @id="users">
  <caption>All of our users: authors, editors, publishers, admins...</caption>

  <thead>
    <tr>
      <th scope="col" @id="users_id"         data-hypertextql-type="integer" class="hypertextql_primary_key">id</th>
      <th scope="col" @id="users_email"      data-hypertextql-type="string">email</th>
      <th scope="col" @id="users_name"       data-hypertextql-type="string">name</th>
      <th scope="col" @id="users_username"   data-hypertextql-type="string">username</th>
      <th scope="col" @id="users_bio"        data-hypertextql-type="text">bio</th>
      <th scope="col" @id="users_created_at" data-hypertextql-type="datetime">created_at</th>
      <th scope="col" @id="users_updated_at" data-hypertextql-type="datetime">updated_at</th>
    </tr>
  </thead>

  <tbody>
    ...
  </tbody>
</table>
```

### Rows

Each database table content row MUST be inside of a `tr` tag inside of the `tbody` tag.

```html
<table class="hypertextql_table" @id="users">
  <caption>All of our users: authors, editors, publishers, admins...</caption>

  <thead>
    <tr>
      <th scope="col" @id="users_id"         data-hypertextql-type="integer" class="hypertextql_primary_key">id</th>
      <th scope="col" @id="users_email"      data-hypertextql-type="string">email</th>
      <th scope="col" @id="users_name"       data-hypertextql-type="string">name</th>
      <th scope="col" @id="users_username"   data-hypertextql-type="string">username</th>
      <th scope="col" @id="users_bio"        data-hypertextql-type="text">bio</th>
      <th scope="col" @id="users_created_at" data-hypertextql-type="datetime">created_at</th>
      <th scope="col" @id="users_updated_at" data-hypertextql-type="datetime">updated_at</th>
    </tr>
  </thead>

  <tbody>
    <tr>
      ...
    </tr>
  </tbody>
</table>
```

### Row slug

Each database table content row MUST have a slug.
A database table content row slug MUST be stored in the value of the `tr` tag `id` attribute.
A database table content row slug MUST be a composite of the _database table name_ and the content row _primary key_ value joined by an underscore `[table name, "_", primary key]`.
For example, `users_1`, `users_2`, etc.

```html
<table class="hypertextql_table" @id="users">
  <caption>All of our users: authors, editors, publishers, admins...</caption>

  <thead>
    <tr>
      <th scope="col" @id="users_id"         data-hypertextql-type="integer" class="hypertextql_primary_key">id</th>
      <th scope="col" @id="users_email"      data-hypertextql-type="string">email</th>
      <th scope="col" @id="users_name"       data-hypertextql-type="string">name</th>
      <th scope="col" @id="users_username"   data-hypertextql-type="string">username</th>
      <th scope="col" @id="users_bio"        data-hypertextql-type="text">bio</th>
      <th scope="col" @id="users_created_at" data-hypertextql-type="datetime">created_at</th>
      <th scope="col" @id="users_updated_at" data-hypertextql-type="datetime">updated_at</th>
    </tr>
  </thead>

  <tbody>
    <tr @id="users_1">
      ...
    </tr>

    <tr @id="users_2">
      ...
    </tr>
  </tbody>
</table>
```

### Columns

Each database table content row column MUST be in a `td` tag.

```html
<table class="hypertextql_table" @id="users">
  <caption>All of our users: authors, editors, publishers, admins...</caption>

  <thead>
    <tr>
      <th scope="col" @id="users_id"         data-hypertextql-type="integer" class="hypertextql_primary_key">id</th>
      <th scope="col" @id="users_email"      data-hypertextql-type="string">email</th>
      <th scope="col" @id="users_name"       data-hypertextql-type="string">name</th>
      <th scope="col" @id="users_username"   data-hypertextql-type="string">username</th>
      <th scope="col" @id="users_bio"        data-hypertextql-type="text">bio</th>
      <th scope="col" @id="users_created_at" data-hypertextql-type="datetime">created_at</th>
      <th scope="col" @id="users_updated_at" data-hypertextql-type="datetime">updated_at</th>
    </tr>
  </thead>

  <tbody>
    <tr @id="users_1">
      <td>...</td>
    </tr>

    <tr @id="users_2">
      <td>...</td>
    </tr>
  </tbody>
</table>
```

Each database table content row column MUST contain the same number of `td` tags as `th` tags in the schema row `tr` in `thead`.

```html
<table class="hypertextql_table" @id="users">
  <caption>All of our users: authors, editors, publishers, admins...</caption>

  <thead>
    <tr>
      <th scope="col" @id="users_id"         data-hypertextql-type="integer" class="hypertextql_primary_key">id</th>
      <th scope="col" @id="users_email"      data-hypertextql-type="string">email</th>
      <th scope="col" @id="users_name"       data-hypertextql-type="string">name</th>
      <th scope="col" @id="users_username"   data-hypertextql-type="string">username</th>
      <th scope="col" @id="users_bio"        data-hypertextql-type="text">bio</th>
      <th scope="col" @id="users_created_at" data-hypertextql-type="datetime">created_at</th>
      <th scope="col" @id="users_updated_at" data-hypertextql-type="datetime">updated_at</th>
    </tr>
  </thead>

  <tbody>
    <tr @id="users_1">
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>

    <tr @id="users_2">
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
  </tbody>
</table>
```

#### Column slug

Each database table content row column MUST have a slug.
Each database table content row column MUST be stored in the `td` tag `id` attribute.
Each database table content row column MUST be a composite of the _database table name_ and a _column name_ joined by an `[table name, "_", primary key value] "_", column name]`.
For example, `users_1_id`, `users_2_email`, etc.

```html
<tbody>
  <tr @id="users_1">
    <td @id="users_1_id">...</td>
    <td @id="users_1_email">...</td>
    <td @id="users_1_name">...</td>
    <td @id="users_1_username">...</td>
    <td @id="users_1_bio">...</td>
    <td @id="users_1_created_at">...</td>
    <td @id="users_1_updated_at">...</td>
  </tr>

  <tr @id="users_2">
    <td @id="users_2_id">...</td>
    <td @id="users_2_email">...</td>
    <td @id="users_2_name">...</td>
    <td @id="users_2_username">...</td>
    <td @id="users_2_bio">...</td>
    <td @id="users_2_created_at">...</td>
    <td @id="users_2_updated_at">...</td>
  </tr>
</tbody>
```

#### Column content

Each database table content row column MUST content be inside of the `td` tag.

```html
<tbody>
  <tr @id="users_1">
    <td @id="users_1_id">1</td>
    <td @id="users_1_email">veganstraightedge@gmail.com</td>
    <td @id="users_1_name">Shane Becker</td>
    <td @id="users_1_username">@veganstraightedge</td>
    <td @id="users_1_bio"><textarea readonly>Midwest grown. Rubyist. Creator of HypertextQL.</textarea></td>
    <td @id="users_1_created_at"><time datetime="2013-05-29T15:48:47+07:00">Wed May 29 15:48:47 +0700 2013</time></td>
    <td @id="users_1_updated_at"><time datetime="2013-05-29T16:23:19+07:00">Wed May 29 16:23:19 +0700 2013</time></td>
  </tr>

  <tr @id="users_2">
    <td @id="users_2_id">2</td>
    <td @id="users_2_email">bob@example.com</td>
    <td @id="users_2_name">Bob Sackamano</td>
    <td @id="users_2_username">@bobsackamano</td>
    <td @id="users_2_bio"><textarea readonly>A harebrained character on Seinfeld, never seen on screen, only mentioned by Kramer.</textarea></td>
    <td @id="users_2_created_at"><time datetime="2023-11-14T16:37:18+07:00">Tue Nov 16 15:37:18 +0700 2013</time></td>
    <td @id="users_2_updated_at"><time datetime="2023-11-14T16:42:56+07:00">Tue Nov 16 15:42:56 +0700 2013</time></td>
  </tr>
</tbody>
```

### Primary key columns

Each database table content row primary key MUST contain a section link `a` to content row [_row slug_](#row-slug).

```html
<tbody>
  <tr @id="users_1">
    <td @id="users_1_id"><a href="#users_1">1</a></td>
    <td @id="users_1_email">veganstraightedge@gmail.com</td>
    <td @id="users_1_name">Shane Becker</td>
    <td @id="users_1_username">@veganstraightedge</td>
    <td @id="users_1_bio"><textarea readonly>Midwest grown. Rubyist. Creator of HypertextQL.</textarea></td>
    <td @id="users_1_created_at"><time datetime="2013-05-29T15:48:47+07:00">Wed May 29 15:48:47 +0700 2013</time></td>
    <td @id="users_1_updated_at"><time datetime="2013-05-29T16:23:19+07:00">Wed May 29 16:23:19 +0700 2013</time></td>
  </tr>

  <tr @id="users_2">
    <td @id="users_2_id"><a href="#users_2">1</a></td>
    <td @id="users_2_email">bob@example.com</td>
    <td @id="users_2_name">Bob Sackamano</td>
    <td @id="users_2_username">@bobsackamano</td>
    <td @id="users_2_bio"><textarea readonly>A harebrained character on Seinfeld, never seen on screen, only mentioned by Kramer.</textarea></td>
    <td @id="users_2_created_at"><time datetime="2023-11-14T16:37:18+07:00">Tue Nov 16 15:37:18 +0700 2013</time></td>
    <td @id="users_2_updated_at"><time datetime="2023-11-14T16:42:56+07:00">Tue Nov 16 15:42:56 +0700 2013</time></td>
  </tr>
</tbody>
```

---

# TKTK: Column types

TKTK think about spec for leading/trailing blank space in content cells

TKTK how to store and display each datatype of content

# TKTK: Foreign keys

TKTK Link from foreign key to table page and table row
TKTK [rel=canonical]
TKTK https://microformats.org/wiki/rel-canonical
