package = "kong-plugin-acme2"
version = "0.3.0-1"
source = {
   url = "git+https://github.com/lodrantl/kong-plugin-acme.git",
   tag = "0.3.0-1",
}
description = {
   homepage = "https://github.com/lodrantl/kong-plugin-acme",
   summary = "Let's Encrypt integration with Kong",
   license = "Apache 2.0",
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.acme2.api"] = "kong/plugins/acme2/api.lua",
      ["kong.plugins.acme2.client"] = "kong/plugins/acme2/client.lua",
      ["kong.plugins.acme2.daos"] = "kong/plugins/acme2/daos.lua",
      ["kong.plugins.acme2.handler"] = "kong/plugins/acme2/handler.lua",
      ["kong.plugins.acme2.migrations.000_base_acme"] = "kong/plugins/acme2/migrations/000_base_acme.lua",
      ["kong.plugins.acme2.migrations.init"] = "kong/plugins/acme2/migrations/init.lua",
      ["kong.plugins.acme2.schema"] = "kong/plugins/acme2/schema.lua",
      ["kong.plugins.acme2.storage.kong"] = "kong/plugins/acme2/storage/kong.lua"
   }
}
dependencies = {
  --"kong >= 1.2.0",
  "lua-resty-acme ~> 0.6"
}
