defmodule FlightFinder.Parsers.KLM do
  use FlightFinder.Parsers.Parser

  @impl true
  def price_parser(response) do
    try do
      response
      |> xmap(prices: ~x"//ns2:OffersGroup//ns2:Offer//ns2:TotalPrice//ns2:TotalAmount/text()"l)
    catch
      :exit, _val -> %{prices: []}
    end
  end
end
