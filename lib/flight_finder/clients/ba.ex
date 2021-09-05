defmodule FlightFinder.Clients.BA do
  use FlightFinder.Clients.Client

  alias FlightFinder.HTTP
  alias FlightFinder.Parsers.BA, as: BAParser

  @impl true
  def code, do: :BA

  defp parse_xml_response(response), do: BAParser.price_parser(response)

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
end
