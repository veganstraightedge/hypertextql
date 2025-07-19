# Datatypes

Core and PostgreSQL.

## Core datatypes

**Required.**

- [`bigint`](bigint.md) — bigint — stored as plaintext?
- [`binary`](binary.md) — blob — binary blob data, how to store/display? sidecar attachment files? code+pre tag?
- [`boolean`](boolean.md) — boolean — stored as `t`|`f` or `1`|`0`
- [`date`](date.md) — date — stored/displayed as `time` tag
- [`datetime`](datetime.md) — timestamp — stored/displayed as `time` tag
- [`decimal`](decimal.md) — decimal — stored as plaintext?
- [`float`](float.md) — float — stored as plaintext?
- [`integer`](integer.md) — integer — stored as plaintext
- [`string`](string.md) — character — stored as plaintext
- [`text`](text.md) — text — stored as plaintext (in a `textarea`?)
- [`time`](time.md) — datetime — stored/displayed as `time` tag
- [`timestamp`](timestamp.md) — timestamp — stored/displayed as `time` tag

## [PostgreSQL extra datatypes](postgresql.md), optional

Nice to have, though!

- [`array`](postgresql/array.md) — Array — marked up as `ol`
- [`hstore`](postgresql/hstore.md) — Hstore — marked up as a `dl`, with nested `dl`s as needed
- [`enumerated-types`](postgresql/enumerated_types.md) — Enumerated Types (`Enum`) — stored as plaintext (or a `readonly` `select`?)
- [`composite-types`](postgresql/composite_types.md) — Composite Types — no special treatment, stored as plaintext (or a `dl`?)
- [`json`](postgresql/json.md) — JSON — stored as raw JSON, displayed as prettified JSON (how to mark up?)
- [`jsonb`](postgresql/jsonb.md) — JSONB binary format — how to store/display
- [`bytea`](postgresql/bytea.md) — Bytea — binary blob data, how to store/display? sidecar files/attachments? code+pre tag?
- [`uuid`](postgresql/uuid.md) — UUID — generated with Javascript in browser with `crypto.randomUUID()`, stored as plaintext
- [`uuid-primary-keys`](postgresql/uuid_primary_keys.md) — UUID Primary Keys — generated with Javascript in browser with `crypto.randomUUID()`, stored as plaintext
- [`bit(4)` `bit(8)` `bit(n)`](postgresql/bit_string_types.md) — Bit string — stored as plaintext?, maybe `input[readonly][pattern="^[01]{4}$"`?
- [`interval`](postgresql/interval.md) — Interval — stored as plaintext?
- [`point`](postgresql/point.md) — Point — stored as plaintext, store as `ol` with two `li` tags (for `x` and `y`)
- [`line`](postgresql/line.md) — Line — stored as plaintext?
- [`lseg`](postgresql/lseg.md) — Line Segment — stored as plaintext?
- [`box`](postgresql/box.md) — Box — stored as plaintext?
- [`path`](postgresql/path.md) — Path — stored as plaintext?
- [`polygon`](postgresql/polygon.md) — Polygon — stored as plaintext?
- [`circle`](postgresql/circle.md) — Circle — stored as plaintext?
- [`int4range`](postgresql/int4range.md) — Range of integer, `int4multirange`, corresponding `Multirange` — use `progress`, `meter` tag?
- [`int8range`](postgresql/int8range.md) — Range of bigint, `int8multirange`, corresponding `Multirange` — use `progress`, `meter` tag?
- [`numrange`](postgresql/numrange.md) — Range of numeric, `nummultirange`, corresponding `Multirange` — use `progress`, `meter` tag?
- [`tsrange`](postgresql/tsrange.md) — Range of timestamp without time zone, `tsmultirange`, corresponding `Multirange` — use `ol` 2x `li` with `time` tags?
- [`tstzrange`](postgresql/tstzrange.md) — Range of timestamp with time zone, `tstzmultirange`, corresponding `Multirange` — use `ol` 2x `li` with `time` tags?
- [`daterange`](postgresql/daterange.md) — Range of date, `datemultirange`, corresponding `Multirange` — use `ol` 2x `li` with `time` tags?
- [`inet`](postgresql/inet.md) — inet IPv4 IPv6 host addresses —stored as plaintext, maybe `input[readonly][pattern="PRIOR ART REGEX"`?
- [`cidr`](postgresql/cidr.md) — cidr IPv4 IPv6 network address —stored as plaintext, maybe `input[readonly][pattern="PRIOR ART REGEX"`?
- [`macaddr`](postgresql/macaddr.md) — Mac address — stored as plaintext, maybe `input[readonly][pattern="PRIOR ART REGEX"`?
