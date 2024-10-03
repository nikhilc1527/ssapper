# ssapper

This crate exposes two binaries: ssapper and ssapper-tool

* ssapper: this is designed to be a drop-in replacement for z3, with reasonable amount of cli option parity. It calls z3 under the hood, while caching repeated queries and tracking database performance and timing performance (and more soon)

* ssapper-tool: this tool gives external functionality related to ssapper, including giving a report of caching/timing performance for recently ran ssapper instances, clearing perf history, and (more soon)
