import Config

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :flight_finder, FlightFinderWeb.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false

config :phoenix, :json_library, Jason

config :secrex,
  key_file: ".secret-key",
  files: ["config/prod.secret.exs"]

import_config "#{Mix.env()}.exs"
