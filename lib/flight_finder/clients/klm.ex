defmodule FlightFinder.Clients.KLM do
  use FlightFinder.Clients.Client

  alias FlightFinder.HTTP
  alias FlightFinder.Request
  alias FlightFinder.Parsers.KLM, as: KLMParser

  @impl true
  def fetch_prices(%Request{} = request) do
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

  defp parse_xml_response(response), do: KLMParser.price_parser(response)

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
    <S:Envelope xmlns:S="http://schemas.xmlsoap.org/soap/envelope/" xmlns="http://www.iata.org/IATA/2015/00/2018.2/IATA_AirShoppingRQ">
    <S:Header />
    <S:Body>
      <IATA_AirShoppingRQ>
         <Party>
            <Participant>
               <Aggregator>
                  <AggregatorID>NDCABT</AggregatorID>
                  <Name>NDCABT</Name>
               </Aggregator>
            </Participant>
            <Recipient>
               <ORA>
                  <AirlineDesigCode>AF</AirlineDesigCode>
               </ORA>
            </Recipient>
            <Sender>
               <TravelAgency>
                  <AgencyID>12345675</AgencyID>
                  <IATANumber>12345675</IATANumber>
                  <Name>nom</Name>
                  <PseudoCityID>PAR</PseudoCityID>
               </TravelAgency>
            </Sender>
         </Party>
         <PayloadAttributes>
            <CorrelationID>5</CorrelationID>
            <VersionNumber>18.2</VersionNumber>
         </PayloadAttributes>
         <Request>
            <FlightCriteria>
               <OriginDestCriteria>
                  <DestArrivalCriteria>
                     <IATALocationCode>#{destination}</IATALocationCode>
                  </DestArrivalCriteria>
                  <OriginDepCriteria>
                     <Date>#{departure_date}</Date>
                     <IATALocationCode>#{origin}</IATALocationCode>
                  </OriginDepCriteria>
                  <PreferredCabinType>
                     <CabinTypeName>ECONOMY</CabinTypeName>
                  </PreferredCabinType>
               </OriginDestCriteria>
            </FlightCriteria>
            <Paxs>
               <Pax>
                  <PaxID>PAX1</PaxID>
                  <PTC>ADT</PTC>
               </Pax>
            </Paxs>
         </Request>
      </IATA_AirShoppingRQ>
    </S:Body>
    </S:Envelope>
    """
  end

  defp headers do
    [
      {"api_key", api_key()},
      {"content_type", "text/xml"},
      {"SOAPAction",
       "\"http://www.af-klm.com/services/passenger/ProvideAirShopping/airShopping\""}
    ]
  end

  defp api_key do
    Application.get_env(:flight_finder, __MODULE__) |> Keyword.fetch!(:key)
  end

  defp url do
    Application.get_env(:flight_finder, __MODULE__) |> Keyword.fetch!(:url)
  end
end
