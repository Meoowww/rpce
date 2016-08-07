#!/usr/bin/env crystal
require "kemal"
require "pg"

require "./rpce/webroot/npcs/*"

DB = PG.connect(ENV["PG_URL"])

Kemal.run
