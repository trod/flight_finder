defmodule FlightFinder.MixProject do
  use Mix.Project

  def project do
    [
      app: :flight_finder,
      version: "0.1.0",
      elixir: "~> 1.11",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      deps: deps()
    ]
  end

  def application do
    [
      mod: {FlightFinder.Application, []},
      extra_applications: [:logger]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      {:phoenix, "~> 1.5.8"},
      {:gettext, "~> 0.11"},
      {:jason, "~> 1.0"},
      {:httpoison, "~> 1.8"},
      {:plug_cowboy, "~> 2.0"},
      {:sweet_xml, "~> 0.7.1"},
      {:decimal, "~> 2.0"},
      {:secrex, "~> 0.3", runtime: false},
      {:mock, "~> 0.3.0", only: :test}
    ]
  end
end
