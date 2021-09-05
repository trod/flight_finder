defmodule FlightFinder.Clients.BA do
  use FlightFinder.Clients.Client

  alias FlightFinder.HTTP
  alias FlightFinder.Parsers.BA, as: BAParser

  @impl true
  def fetch_prices(request) do
    prices =
      request
      |> fetch_flights_payload()
      |> parse_flight_prices()

    {:ok, prices}
  end

  defp fetch_flights_payload(params) do
    HTTP.post(
      url(),
      prepare_body(params.origin, params.destination, params.departure_date),
      headers()
    )
  end

  defp parse_xml_response(response), do: BAParser.price_parser(response)

  defp parse_flight_prices(result) do
    case parse_xml_response(result) do
      %{prices: price_list} ->
        price_list |> Enum.map(&convert_price(&1)) |> Enum.reject(&(&1 == :error))

      _ ->
        []
    end
  end

  defp convert_price(price) when is_list(price) do
    try do
      price
      |> String.Chars.to_string()
      |> Decimal.new()
    rescue
      _e in Decimal.Error -> :error
    end
  end

  defp convert_price(_price), do: :error

  defp prepare_body(origin, destination, departure_date) do
    """
    <?xml version="1.0" encoding="UTF-8"?>
    <s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
    <s:Body xmlns="http://www.iata.org/IATA/EDIST">
      <AirShoppingRQ Version="3.0">
         <PointOfSale>
            <Location>
               <CountryCode>DE</CountryCode>
            </Location>
         </PointOfSale>
         <Document />
         <Party>
            <Sender>
               <TravelAgencySender>
                  <Name>test agent</Name>
                  <IATA_Number>00002004</IATA_Number>
                  <AgencyID>test agent</AgencyID>
               </TravelAgencySender>
            </Sender>
         </Party>
         <Travelers>
            <Traveler>
               <AnonymousTraveler>
                  <PTC Quantity="1">ADT</PTC>
               </AnonymousTraveler>
            </Traveler>
         </Travelers>
         <CoreQuery>
            <OriginDestinations>
               <OriginDestination>
                  <Departure>
                     <AirportCode>#{origin}</AirportCode>
                     <Date>#{departure_date}</Date>
                  </Departure>
                  <Arrival>
                     <AirportCode>#{destination}</AirportCode>
                  </Arrival>
               </OriginDestination>
            </OriginDestinations>
         </CoreQuery>
      </AirShoppingRQ>
    </s:Body>
    </s:Envelope>
    """
  end

  defp headers do
    [
      {"api_key", api_key()},
      {"content_type", "application/xml"},
      {"SOAPAction", "AirShoppingV01"}
    ]
  end

  defp api_key do
    Application.get_env(:flight_finder, __MODULE__) |> Keyword.fetch!(:key)
  end

  defp url do
    Application.get_env(:flight_finder, __MODULE__) |> Keyword.fetch!(:url)
  end
end
