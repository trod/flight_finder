defmodule FlightFinder.Parsers.BA do
  import SweetXml

  def price_parser(response) do
    response
    |> xmap(prices: ~x"//OffersGroup//AirlineOffer//TotalPrice///SimpleCurrencyPrice/text()"l)
  end
end
