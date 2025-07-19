# Database

## General

### UTF-8

All HypertextQL HTML files MUST use a `UTF-8` character encoding.
All HypertextQL HTML files MUST have a `meta` tag with `charset` attribute and `utf-8` value.

```html
<meta charset="utf-8">
```

### Language

TKTK
Optional `lang="en"`.
Defaults to `en`.

### Language direction

TKTK
Optional `dir="ltr"` or `dir="rtl"`.
Defaults to `ltr`.

### Folder/directory

TKTK: top level index file with a list of tables

TKTK: https://github.com/veganstraightedge/hypertextql/issues/8

### Prefetch table pages

TKTK: to make future fetches faster. Premature?

```html
<head>
  <link rel="prefetch" href="/[database]/[table_1].html" />
  <link rel="prefetch" href="/[database]/[table_2].html" />
  <link rel="prefetch" href="/[database]/[table_3].html" />
  ...
</head>
```
