#!/usr/bin/env crystal
require "kemal"
require "pg"

# Data base
DB = PG.connect(ENV["PG_URL"])

# Web service
require "./rpce/webroot/resources"
Kemal.run
