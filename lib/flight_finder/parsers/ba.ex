defmodule FlightFinder.Parsers.BA do
  use FlightFinder.Parsers.Parser

  @impl true
  def price_parser(response) do
    response
    |> xmap(prices: ~x"//OffersGroup//AirlineOffer//TotalPrice///SimpleCurrencyPrice/text()"l)
  end
end
