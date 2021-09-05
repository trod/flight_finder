import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :flight_finder, FlightFinderWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

config :flight_finder, FlightFinder.Clients.KLM, key: "test_api_key", url: "test_api_url"
config :flight_finder, FlightFinder.Clients.BA, key: "test_api_key", url: "test_api_url"
