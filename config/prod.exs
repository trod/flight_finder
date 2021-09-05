import Config
config :logger, level: :info

config :flight_finder, FlightFinder.Clients.KLM,
  key: System.get_env("KLM_KEY"),
  url: "https://ndc-rct.airfranceklm.com/passenger/distribmgmt/001448v02/EXT"

config :flight_finder, FlightFinder.Clients.BA,
  key: System.get_env("BA_KEY"),
  url: "https://test.api.ba.com/selling-distribution/AirShopping/V2"
