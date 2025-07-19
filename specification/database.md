[HypertextQL specification](README.md)

# Database

## Name

A HypertextQL database MUST be in one folder.
A HypertextQL database folder name is the name database.

```
# A database named "blog"
/blog

# A database named "razzledazzle"
/razzledazzle
```

A database table name with multiple words SHOULD use underscores as a word separator.

```
razzle_dazzle
example_dot_com
```

## Index file

A HypertextQL database MUST contain an `index.html` HTML file at the root of the folder.

```
# A database named "blog"
/blog/index.html
```

A HypertextQL database `index.html` HTML file MUST contain an ordered list `ol`.
The list `ol` MUST have an `id` attribute with the value of `hypertextql_tables`.
The list `ol` MUST contain one item `li` per database table.
Each list item `li` MUST contain one link `a` to that database table's page.
The link `a` content MUST be the name of the database table that is linked to.
The list `li` items SHOULD be sorted in lexicographical (alphabetical) order.

```html
<ol id="hypertextql_tables">
  <li><a href="comments.html">comments</a></li>
  <li><a href="posts.html">posts</a></li>
  <li><a href="taggings.html">taggings</a></li>
  <li><a href="tags.html">tags</a></li>
  <li><a href="users.html">users</a></li>
</ol>
```

### Prefetch table pages

A HypertextQL database `index.html` HTML file SHOULD `link` tags in the `head` tag with `rel` attribute with the value of `prefetch` and `href` with a value of each database table HTML page.
The `link[rel-prefetch]` tags SHOULD be sorted in lexicographical (alphabetical) order.

```html
<head>
  <link rel="prefetch" href="[table_1].html" />
  <link rel="prefetch" href="[table_2].html" />
  <link rel="prefetch" href="[table_3].html" />
  ...
</head>
```

## Table files

A HypertextQL database folder MUST contain one HTML file for each database table.
See [Database Table](table.md) for specification of database table HTML files.
