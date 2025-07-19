# PostgresSQL column datatypes

Consider extra datatypes from Postgres: https://guides.rubyonrails.org/active_record_postgresql.html
Consider `data-*` to supplement HTML semantics when/if needed. (`data-hypertextql-*`)

- `array` — Array — marked up as `ol`
- `hstore` — Hstore — marked up as a `dl`, with nested `dl`s as needed
- `enumerated-types` — Enumerated Types (`Enum`) — stored as plaintext (or a `readonly` `select`?)
- `composite-types` — Composite Types — no special treatment, stored as plaintext (or a `dl`?)
- `json` — JSON — stored as raw JSON, displayed as prettified JSON (how to mark up?)
- `jsonb` — JSONB binary format — how to store/display
- `bytea` — Bytea — binary blob data, how to store/display? sidecar files/attachments? code+pre tag?

UUID types:

- `uuid` — UUID — generated with Javascript in browser with `crypto.randomUUID()`, stored as plaintext
- `uuid-primary-keys` — UUID Primary Keys — generated with Javascript in browser with `crypto.randomUUID()`, stored as plaintext

Bit String Types:

- `bit(4)` `bit(8)` `bit(n)` — Bit string — stored as plaintext?, maybe `input[readonly][pattern="^[01]{4}$"`?
- `interval` — Interval — stored as plaintext?

Geometric Types:

- `point` — Point — stored as plaintext, store as `ol` with two `li` tags (for `x` and `y`)
- `line` — Line — stored as plaintext?
- `lseg` — Line Segment — stored as plaintext?
- `box` — Box — stored as plaintext?
- `path` — Path — stored as plaintext?
- `polygon` — Polygon — stored as plaintext?
- `circle` — Circle — stored as plaintext?

Range Types:

- `int4range` — Range of integer, `int4multirange`, corresponding `Multirange` — use `progress`, `meter` tag?
- `int8range` — Range of bigint, `int8multirange`, corresponding `Multirange` — use `progress`, `meter` tag?
- `numrange` — Range of numeric, `nummultirange`, corresponding `Multirange` — use `progress`, `meter` tag?
- `tsrange` — Range of timestamp without time zone, `tsmultirange`, corresponding `Multirange` — use `ol` 2x `li` with `time` tags?
- `tstzrange` — Range of timestamp with time zone, `tstzmultirange`, corresponding `Multirange` — use `ol` 2x `li` with `time` tags?
- `daterange` — Range of date, `datemultirange`, corresponding `Multirange` — use `ol` 2x `li` with `time` tags?

Network Address Types:

- `inet` — inet IPv4 IPv6 host addresses —stored as plaintext, maybe `input[readonly][pattern="PRIOR ARTREGEX"`?
- `cidr` — cidr IPv4 IPv6 network address —stored as plaintext, maybe `input[readonly][pattern="PRIOR ARTREGEX"`?
- `macaddr` — Mac address — stored as plaintext, maybe `input[readonly][pattern="PRIOR ARTREGEX"`?

