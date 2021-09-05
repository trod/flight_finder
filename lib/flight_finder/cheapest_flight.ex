defmodule FlightFinder.CheapestFlight do
  alias FlightFinder.Clients

  @clients [:klm, :ba]

  def find(
        %FlightFinder.Request{
          origin: _origin,
          destination: _destination,
          departure_date: _departure_date
        } = request
      ) do
    prices =
      @clients
      |> Enum.map(fn client -> Clients.client(client) end)
      |> Enum.map(fn client ->
        Task.async(fn ->
          Clients.fetch_price(client, request)
        end)
      end)
      |> Enum.map(&Task.await/1)
      |> List.flatten()

    case prices do
      [] -> :not_found
      prices -> Enum.min(prices)
    end
  end

  def find(_request), do: :wrong_request
end
