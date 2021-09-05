import Config

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 20

# Initialize plugs at runtime for faster development compilation
config :phoenix, :plug_init_mode, :runtime

config :flight_finder, FlightFinder.Clients.KLM, key: "test_api_key", url: "test_api_url"
config :flight_finder, FlightFinder.Clients.BA, key: "test_api_key", url: "test_api_url"
