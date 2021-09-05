defmodule FlightFinder.Clients do
  alias FlightFinder.Clients.KLM
  alias FlightFinder.Clients.BA

  def client(:klm), do: KLM
  def client(:ba), do: BA
  def client(_), do: :not_supported

  def fetch_price(client, request) do
    case client.fetch_prices(request) do
      {:ok, prices} -> prices
      _ -> []
    end
  end
end
