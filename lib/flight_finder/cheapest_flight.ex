defmodule FlightFinder.CheapestFlight do
  alias FlightFinder.Clients

  # TODO: maybe move this to config?
  @clients [:klm, :ba]

  def find(
        %FlightFinder.Request{
          origin: _origin,
          destination: _destination,
          departure_date: _departure_date
        } = request
      ) do
    prices =
      try do
        @clients
        |> Enum.map(fn client -> Clients.client(client) end)
        |> Enum.map(fn client ->
          Task.async(fn ->
            Clients.fetch_price(client, request)
          end)
        end)
        |> Task.await_many()
        |> List.flatten()
      catch
        # Return empty list on task's timeout.
        # Not sure if we need to bubble a timeout up to external client.
        :exit, _ -> []
      end

    case prices do
      [] ->
        {:ok, :not_found}

      prices ->
        {:ok,
         prices
         |> Enum.sort_by(fn {_code, price} -> price end)
         |> List.first()}
    end
  end

  def find(_request), do: :wrong_request
end
