# Table > Metadata

## Description

A table's has some required and some optional metadata.
Some examples are a table's name and a table's description.

## File

A table MUST be stored in an HTML file.
A table HTML file MUST have the same name as the table.

```
# An html file for a table named 'users'
users.html
```

## Name

A table MUST have a name
A table's name MUST be stored in the table tag's ID attribute

```html
<table id="users">
</table>
```

## Description

A table CAN have a description.
A table's description MUST be stored in the table tag's child caption tag.

```html
<table id="users">
  <caption>All of our users: customers, admins, engineers...</caption>
</table>
```
