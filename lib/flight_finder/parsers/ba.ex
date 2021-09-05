defmodule FlightFinder.Parsers.BA do
  use FlightFinder.Parsers.Parser

  @impl true
  def price_parser(response) do
    try do
      response
      |> xmap(prices: ~x"//OffersGroup//AirlineOffer//TotalPrice///SimpleCurrencyPrice/text()"l)
    catch
      :exit, _val -> %{prices: []}
    end
  end
end
