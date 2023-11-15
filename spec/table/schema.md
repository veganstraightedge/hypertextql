# Table > Schema

## Description

A table's schema defines the structure of a table:

- how many columns there are
- what the columns are named
- what datatype each column stores
- whether or not a column requires a value
- whether or not there is a default value for a column

## Head

A table's schema MUST be defined in the `table`'s `thead`.

```html
<table id="users">
  <caption>All of our users: customers, admins, engineers...</caption>

  <thead>
  </thead>
</table>
```

## Row

All columns MUST be wrapped in `tr` tag.
The schema row MUST be wrapped in `thead` tag.

```html
<table id="users">
  <caption>All of our users: customers, admins, engineers...</caption>

  <thead>
    <tr>
    </tr>
  </thead>
</table>
```

## Columns

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

## Column scope

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

## Column name

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

## Column slug

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

## Column type

All columns MUST have a type.
A column's type MUST be stored in the `th` tag's `data-hypertextql-type` data attribute.

<!-- TODO investigate HTML attributes/tags to represent types in column headers. -->

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
