defmodule FlightFinder.Parsers.KLM do
  import SweetXml

  def price_parser(response) do
    response
    |> xmap(prices: ~x"//ns2:OffersGroup//ns2:Offer//ns2:TotalPrice//ns2:TotalAmount/text()"l)
  end
end
