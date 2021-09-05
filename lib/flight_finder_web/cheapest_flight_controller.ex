defmodule FlightFinderWeb.FindCheapestOfferController do
  use FlightFinderWeb, :controller

  require Logger

  alias FlightFinder.CheapestFlight
  alias FlightFinder.Request

  def index(
        %Plug.Conn{
          query_params: %{
            "departureDate" => departure_date,
            "destination" => destination,
            "origin" => origin
          }
        } = conn,
        _params
      ) do
    # TODO: That smells a bit. Need to implement a proper validation for params. I'd suggest to use Ecto.Schema
    request =
      Request.from_map(%{origin: origin, destination: destination, departure_date: departure_date})

    payload =
      case CheapestFlight.find(request) do
        {:ok, {code, amount}} -> %{"cheapestOffer" => %{"amount" => amount, "airline" => code}}
        {:ok, :not_found} -> %{"errors" => ["Offer not found"]}
        _ -> %{"errors" => ["Unexpected error"]}
      end

    json(conn, payload)
  end

  def index(conn, _params) do
    json(conn, %{"errors" => ["Missing required params"]})
  end
end
