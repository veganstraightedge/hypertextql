[HypertextQL specification](../)

# Style Guide

Style guide/manual for HypertextQL copywriting in the specification and implementation

## Word separators

### Use underscores

Underscores are used as word separators in HTML attribute values:

✅
```html
<table class="hypertextql_table">
<td @id="users_2_id">2</td>
```

Hyphens are NOT used as separators in HTML attribute values:

❌
```html
<table class="hypertextql-table">
<th @id="primary-key">2</td>
```

**Rationale:** while hyphenated HTML class names are common, because they match CSS property hyphenations, the hyphen `-` is generally the subtraction operator in programming languages. If HypertextQL databases used hyphens in HTML attribute values, then HypertextQL implementation would have to transpose underscores and hyphens and back again in many places. This is a recipe for unnecessary complexity and errors.

### Do NOT use hyphens

Hyphen are also not _symbol safe_ in programming languages like Ruby, while underscores are. Again, this will make implementations simpler and easier.

✅
```ruby
:hypertextql_table
:primary_key
```

Hyphens are NOT used as separators in HTML attribute values:

❌
```ruby
:hypertextql-table
:primary-key
```

### Do NOT use CamelCase

Neither CamelCase nor camelCase is ever used in the HypertextQL spec.
HypertextQL users can, of course, use CamelCase names for tables or columns.
HypertextQL implementations in languages that use CamelCase can also, of course, use CamelCase in their implementation code.
HypertextQL implementations MUST NOT ever require HypertextQL users to CamelCase in their database schema.

❌
```html
<table class="HypertextqlTable">
<th @id="PrimaryKey">2</td>
```

HypertextQL implementations can require HypertextQL users to use CamelCase the usage of an implementation.

✅
```html
<table class="hypertextql_table" @id="clown_cars">
  ...
</table>
```

```ruby
ClownCar.find(37)
```

## Heading use sentence case, not title case

❌
```markdown
# Heading use Sentence Case, not Title Case
# Specification for HypertextQL Database Format
```

HypertextQL implementations can require HypertextQL users to use CamelCase the usage of an implementation.

✅
```markdown
# Heading use sentence case, not title case
# Specification for HypertextQL database format
```

**Rationale:** to disambiguate proper nouns in headings.
