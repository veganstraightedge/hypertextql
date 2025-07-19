[HypertextQL specification](../specification/README.md)

# Common

Specifications that apply to all HypertextQL HTML files.

## Keywords used in this spec

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" in this document are to be interpreted as described in RFC 2119.

1. **MUST** This word, or the terms "**REQUIRED**" or "**SHALL**", mean that the definition is an absolute requirement of the specification.

2. **MUST NOT** This phrase, or the phrase "**SHALL NOT**", mean that the definition is an absolute prohibition of the specification.

3. **SHOULD** This word, or the adjective "**RECOMMENDED**", mean that there may exist valid reasons in particular circumstances to ignore a particular item, but the full implications must be understood and carefully weighed before choosing a different course.

4. **SHOULD NOT** This phrase, or the phrase "**NOT RECOMMENDED**" mean that there may exist valid reasons in particular circumstances when the particular behavior is acceptable or even useful, but the full implications should be understood and the case carefully weighed before implementing any behavior described with this label.

5. **MAY** This word, or the adjective "**OPTIONAL**", mean that an item is truly optional. One vendor may choose to include the item because a particular marketplace requires it or because the vendor feels that it enhances the product while another vendor may omit the same item. An implementation which does not include a particular option **MUST** be prepared to interoperate with another implementation which does include the option, though perhaps with reduced functionality. In the same vein an implementation which does include a particular option **MUST** be prepared to interoperate with another implementation which does not include the option (except, of course, for the feature the option provides.)

---

## General

### UTF-8

All HypertextQL HTML files MUST use a `UTF-8` character encoding.
All HypertextQL HTML files MUST have a `meta` tag with `charset` attribute and `utf-8` value.

```html
<meta charset="utf-8">
```

### Language

All HypertextQL HTML files MAY specify which human language is used in the file with the `lang` attribute on the file's `html` tag.
The value of the OPTIONAL `lang` attribute MUST be a valid [BCP 47 language tag](https://developer.mozilla.org/en-US/docs/Glossary/BCP_47_language_tag).
See [IETF RFC 5646](https://datatracker.ietf.org/doc/html/rfc5646) for more.
For example, `en`, `en-GB`, `zh`, `fr-CA`, etc.
Defaults to `en` if none is given.

```html
<html lang="en">
```

### Language direction

All HypertextQL HTML files MAY specify the direction of the human language is used in the file with the `dir` attribute on the file's `html` tag.
The value of the OPTIONAL `dir` attribute MUST be `ltr` or `rtl`.
Defaults to `ltr` if none is given.

```html
<html lang="ar" dir="rtl">
<html lang="fr" dir="ltr">
```
