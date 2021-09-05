defmodule FlightFinder.Fixtures.BA do
  @moduledoc """
  ba fixtures
  """

  def request_body do
    "<S:Envelope xmlns:S=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns=\"http://www.iata.org/IATA/2015/00/2018.2/IATA_AirShoppingRQ\">\n<S:Header />\n<S:Body>\n  <IATA_AirShoppingRQ>\n     <Party>\n        <Participant>\n           <Aggregator>\n              <AggregatorID>NDCABT</AggregatorID>\n              <Name>NDCABT</Name>\n           </Aggregator>\n        </Participant>\n        <Recipient>\n           <ORA>\n              <AirlineDesigCode>AF</AirlineDesigCode>\n           </ORA>\n        </Recipient>\n        <Sender>\n           <TravelAgency>\n              <AgencyID>12345675</AgencyID>\n              <IATANumber>12345675</IATANumber>\n              <Name>nom</Name>\n              <PseudoCityID>PAR</PseudoCityID>\n           </TravelAgency>\n        </Sender>\n     </Party>\n     <PayloadAttributes>\n        <CorrelationID>5</CorrelationID>\n        <VersionNumber>18.2</VersionNumber>\n     </PayloadAttributes>\n     <Request>\n        <FlightCriteria>\n           <OriginDestCriteria>\n              <DestArrivalCriteria>\n                 <IATALocationCode>LHR</IATALocationCode>\n              </DestArrivalCriteria>\n              <OriginDepCriteria>\n                 <Date>2021-09-26</Date>\n                 <IATALocationCode>MUC</IATALocationCode>\n              </OriginDepCriteria>\n              <PreferredCabinType>\n                 <CabinTypeName>ECONOMY</CabinTypeName>\n              </PreferredCabinType>\n           </OriginDestCriteria>\n        </FlightCriteria>\n        <Paxs>\n           <Pax>\n              <PaxID>PAX1</PaxID>\n              <PTC>ADT</PTC>\n           </Pax>\n        </Paxs>\n     </Request>\n  </IATA_AirShoppingRQ>\n</S:Body>\n</S:Envelope>\n"
  end

  def flights do
    """
    <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
    <soap:Body>
        <AirShoppingRS xmlns="http://www.iata.org/IATA/EDIST" Version="16.1">
            <Document>
                <ReferenceVersion>2016.1</ReferenceVersion>
            </Document>
            <Success/>
            <ShoppingResponseID>
                <ResponseID>2019-05-19T13:22:00.051Z</ResponseID>
            </ShoppingResponseID>
            <OffersGroup>
                <AirlineOffers>
                    <TotalOfferQuantity>28</TotalOfferQuantity>
                    <Owner>BA</Owner>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER1</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">77.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >77.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">40.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0947">
                                        <ClassOfService refs="FBCODE1ADT">
                                            <Code SeatsLeft="5">O</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight1</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>BASIC</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER2</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">86.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >86.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">49.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0949">
                                        <ClassOfService refs="FBCODE2ADT">
                                            <Code SeatsLeft="9">N</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight2</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>BASIC</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER3</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">87.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >87.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">50.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA3292">
                                        <ClassOfService refs="FBCODE3ADT">
                                            <Code SeatsLeft="9">N</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight3</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>BASIC</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER4</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">97.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >97.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">60.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0947">
                                        <ClassOfService refs="FBCODE4ADT">
                                            <Code SeatsLeft="5">O</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight1</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER5</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">106.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >106.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">69.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0949">
                                        <ClassOfService refs="FBCODE5ADT">
                                            <Code SeatsLeft="9">N</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight2</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER6</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">107.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >107.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">70.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA3292">
                                        <ClassOfService refs="FBCODE6ADT">
                                            <Code SeatsLeft="9">N</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight3</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER7</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">163.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >163.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">126.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0953">
                                        <ClassOfService refs="FBCODE7ADT">
                                            <Code SeatsLeft="9">L</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight4</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>BASIC</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER8</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">183.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >183.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">146.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0953">
                                        <ClassOfService refs="FBCODE8ADT">
                                            <Code SeatsLeft="9">L</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight4</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER9</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">219.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >219.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">182.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0951">
                                        <ClassOfService refs="FBCODE9ADT">
                                            <Code SeatsLeft="9">M</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight5</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>BASIC</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER10</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">234.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >234.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">197.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0953">
                                        <ClassOfService refs="FBCODE10ADT">
                                            <Code SeatsLeft="6">I</Code>
                                            <MarketingName>Club Europe</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight4</FlightReferences>
                                </ApplicableFlight>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER11</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">240.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >240.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">203.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0951">
                                        <ClassOfService refs="FBCODE11ADT">
                                            <Code SeatsLeft="9">M</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight5</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER12</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">247.05</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >247.05</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">197.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">50.05</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2091">
                                        <ClassOfService refs="FBCODE12ADT">
                                            <Code SeatsLeft="9">S</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA0831">
                                        <ClassOfService refs="FBCODE13ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight6</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER13</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">256.7</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >256.70</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">217.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">39.70</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2089">
                                        <ClassOfService refs="FBCODE14ADT">
                                            <Code SeatsLeft="9">V</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA0837">
                                        <ClassOfService refs="FBCODE15ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight7</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER14</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">259.05</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >259.05</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">209.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">50.05</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2089">
                                        <ClassOfService refs="FBCODE14ADT">
                                            <Code SeatsLeft="9">V</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA0823">
                                        <ClassOfService refs="FBCODE16ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight8</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER15</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">262.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >262.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">225.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA3292">
                                        <ClassOfService refs="FBCODE17ADT">
                                            <Code SeatsLeft="9">I</Code>
                                            <MarketingName>Club Europe</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight3</FlightReferences>
                                </ApplicableFlight>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER16</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">283.05</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >283.05</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">233.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">50.05</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2091">
                                        <ClassOfService refs="FBCODE18ADT">
                                            <Code SeatsLeft="9">S</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA5952">
                                        <ClassOfService refs="FBCODE19ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight9</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER17</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">283.05</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >283.05</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">233.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">50.05</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2091">
                                        <ClassOfService refs="FBCODE18ADT">
                                            <Code SeatsLeft="9">S</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA5954">
                                        <ClassOfService refs="FBCODE19ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight10</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER18</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">288.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >288.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">251.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0949">
                                        <ClassOfService refs="FBCODE20ADT">
                                            <Code SeatsLeft="9">R</Code>
                                            <MarketingName>Club Europe</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight2</FlightReferences>
                                </ApplicableFlight>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER19</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">288.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >288.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">251.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0947">
                                        <ClassOfService refs="FBCODE20ADT">
                                            <Code SeatsLeft="9">R</Code>
                                            <MarketingName>Club Europe</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight1</FlightReferences>
                                </ApplicableFlight>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER20</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">288.7</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >288.70</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">249.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">39.70</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2089">
                                        <ClassOfService refs="FBCODE21ADT">
                                            <Code SeatsLeft="9">V</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA5968">
                                        <ClassOfService refs="FBCODE19ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight11</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER21</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">288.7</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >288.70</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">249.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">39.70</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2089">
                                        <ClassOfService refs="FBCODE21ADT">
                                            <Code SeatsLeft="9">V</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA5974">
                                        <ClassOfService refs="FBCODE19ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight12</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER22</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">288.7</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >288.70</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">249.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">39.70</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2089">
                                        <ClassOfService refs="FBCODE21ADT">
                                            <Code SeatsLeft="9">V</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA5976">
                                        <ClassOfService refs="FBCODE19ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight13</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER23</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">288.7</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >288.70</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">249.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">39.70</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2089">
                                        <ClassOfService refs="FBCODE21ADT">
                                            <Code SeatsLeft="9">V</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA5978">
                                        <ClassOfService refs="FBCODE19ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight14</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER24</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">299.05</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >299.05</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">249.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">50.05</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2089">
                                        <ClassOfService refs="FBCODE21ADT">
                                            <Code SeatsLeft="9">V</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA5970">
                                        <ClassOfService refs="FBCODE19ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight15</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER25</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">299.05</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >299.05</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">249.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">50.05</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2089">
                                        <ClassOfService refs="FBCODE21ADT">
                                            <Code SeatsLeft="9">V</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA5960">
                                        <ClassOfService refs="FBCODE19ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight16</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER26</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">379.14</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >379.14</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">342.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">37.14</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA0951">
                                        <ClassOfService refs="FBCODE22ADT">
                                            <Code SeatsLeft="9">R</Code>
                                            <MarketingName>Club Europe</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight5</FlightReferences>
                                </ApplicableFlight>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER27</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">627.05</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >627.05</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">577.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">50.05</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2091">
                                        <ClassOfService refs="FBCODE12ADT">
                                            <Code SeatsLeft="9">S</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA5900">
                                        <ClassOfService refs="FBCODE23ADT">
                                            <Code SeatsLeft="9">Y</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight17</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                    <AirlineOffer RequestedDateInd="true">
                        <OfferID Owner="BA">OFFER28</OfferID>
                        <TotalPrice>
                            <SimpleCurrencyPrice Code="EUR">665.97</SimpleCurrencyPrice>
                        </TotalPrice>
                        <PricedOffer>
                            <OfferPrice OfferItemID="1">
                                <RequestedDate>
                                    <PriceDetail>
                                        <TotalAmount>
                                            <SimpleCurrencyPrice Code="EUR"
                                                >665.97</SimpleCurrencyPrice>
                                        </TotalAmount>
                                        <BaseAmount Code="EUR">592.00</BaseAmount>
                                        <Taxes>
                                            <Total Code="EUR">73.97</Total>
                                        </Taxes>
                                    </PriceDetail>
                                    <Associations>
                                        <AssociatedTraveler>
                                            <TravelerReferences>SH1</TravelerReferences>
                                        </AssociatedTraveler>
                                    </Associations>
                                </RequestedDate>
                            </OfferPrice>
                            <Associations>
                                <ApplicableFlight>
                                    <FlightSegmentReference ref="BA2091">
                                        <ClassOfService refs="FBCODE12ADT">
                                            <Code SeatsLeft="9">S</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA2072">
                                        <ClassOfService refs="FBCODE24ADT">
                                            <Code SeatsLeft="9">Y</Code>
                                            <MarketingName>ECONOMY</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <FlightSegmentReference ref="BA1389">
                                        <ClassOfService refs="FBCODE25ADT">
                                            <Code SeatsLeft="9">O</Code>
                                            <MarketingName>Euro Traveller</MarketingName>
                                        </ClassOfService>
                                    </FlightSegmentReference>
                                    <OriginDestinationReferences>OD1</OriginDestinationReferences>
                                    <FlightReferences>Flight18</FlightReferences>
                                </ApplicableFlight>
                                <PriceClass>
                                    <PriceClassReference>PLUS</PriceClassReference>
                                </PriceClass>
                            </Associations>
                        </PricedOffer>
                    </AirlineOffer>
                </AirlineOffers>
            </OffersGroup>
            <DataLists>
                <AnonymousTravelerList>
                    <AnonymousTraveler ObjectKey="SH1">
                        <PTC>ADT</PTC>
                    </AnonymousTraveler>
                </AnonymousTravelerList>
                <DisclosureList>
                    <Disclosures ListKey="EuroTraveller">
                        <Description>
                            <Text>Drinks and M&amp;S food available to buy on flights to/from London
                                Heathrow and London Gatwick</Text>
                        </Description>
                        <Description>
                            <Text>Contoured leather seat</Text>
                        </Description>
                    </Disclosures>
                    <Disclosures ListKey="ClubEurope">
                        <Description>
                            <Text>Access to British Airways lounges where available</Text>
                        </Description>
                        <Description>
                            <Text>Dedicated check-in area</Text>
                        </Description>
                        <Description>
                            <Text>Complimentary bar service including champagne upon request </Text>
                        </Description>
                        <Description>
                            <Text>Contoured leather seat with guaranteed window or aisle</Text>
                        </Description>
                        <Description>
                            <Text>Guaranteed window or aisle seat</Text>
                        </Description>
                        <Description>
                            <Text>2 x 32kg checked baggage allowance</Text>
                        </Description>
                    </Disclosures>
                </DisclosureList>
                <FareList>
                    <FareGroup ListKey="FBCODE1ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>OWZ0HO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE2ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>NWZ0HO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE3ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>NWZ0CO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE4ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>OV2HO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE5ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>NWV2HO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE6ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>NWV2CO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE7ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>LWZ0HO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE8ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>LWV2HO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE9ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>MPZ0HO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE10ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>IV2HO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE11ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>MPV2HO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE12ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>SHEIH/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE13ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>OTV2H/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE14ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>VHEIH/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE15ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>OEV2H/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE16ADT">
                        <Fare>
                            <FareCode>
                                <Code>758</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>OPV2H/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE17ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>IV2CO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE18ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>SHEIHO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE19ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>OEIRO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE20ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>RNV2HO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE21ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>VHEIHO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE22ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>RV2HO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE23ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>YEIW/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE24ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>YEIH/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                    <FareGroup ListKey="FBCODE25ADT">
                        <Fare>
                            <FareCode>
                                <Code>70J</Code>
                            </FareCode>
                        </Fare>
                        <FareBasisCode>
                            <Code>OADDV2RO/Y</Code>
                        </FareBasisCode>
                    </FareGroup>
                </FareList>
                <FlightSegmentList>
                    <FlightSegment SegmentKey="BA0947">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>07:15</Time>
                            <AirportName>MUNICH</AirportName>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>08:30</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>5</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>0947</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>321</AircraftCode>
                            <Name>Airbus A321 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT2H15M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA0949">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>10:35</Time>
                            <AirportName>MUNICH</AirportName>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>11:45</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>5</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>0949</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>32N</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT2H10M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA3292">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>06:40</Time>
                            <AirportName>MUNICH</AirportName>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LCY</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>07:35</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>CITY AIRPORT</AirportName>
                            <Terminal>
                                <Name/>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>3292</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>CJ</AirlineID>
                            <Name>BA CityFlyer</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>E90</AircraftCode>
                            <Name>Embraer E190SR</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H55M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA0953">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>16:25</Time>
                            <AirportName>MUNICH</AirportName>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>17:25</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>5</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>0953</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>321</AircraftCode>
                            <Name>Airbus A321 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT2H</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA0951">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>12:45</Time>
                            <AirportName>MUNICH</AirportName>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>13:50</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>5</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>0951</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT2H5M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA2091">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>20:25</Time>
                            <AirportName>MUNICH</AirportName>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>21:55</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>2091</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT2H30M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA0831">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>07:30</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>09:10</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>5</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>0831</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>32A</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H40M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA2089">
                        <Departure>
                            <AirportCode>MUC</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>11:25</Time>
                            <AirportName>MUNICH</AirportName>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>13:10</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>2089</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT2H45M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA0837">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>15:40</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>17:05</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>5</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>0837</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>319</AircraftCode>
                            <Name>Airbus A319 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H25M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA0823">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>19:50</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>21:10</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>5</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>0823</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>319</AircraftCode>
                            <Name>Airbus A319 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H20M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA5952">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>06:30</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>08:05</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>5952</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H35M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA5954">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>07:30</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>09:05</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>5954</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H35M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA5968">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>14:30</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>16:00</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>5968</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H30M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA5974">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>15:50</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>17:20</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>5974</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H30M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA5976">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>17:00</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>18:20</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>5976</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H20M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA5978">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>18:00</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>19:20</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>5978</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H20M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA5970">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>19:00</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>20:20</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>5970</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H20M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA5960">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>20:10</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-28</Date>
                            <Time>21:30</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>5960</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H20M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA5900">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>07:00</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LGW</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>08:40</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>GATWICK</AirportName>
                            <Terminal>
                                <Name>S</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>5900</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H40M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA2072">
                        <Departure>
                            <AirportCode>DUB</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>06:30</Time>
                            <AirportName>DUBLIN</AirportName>
                            <Terminal>
                                <Name>2</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>MAN</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>07:35</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>MANCHESTER</AirportName>
                            <Terminal>
                                <Name>1</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>2072</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>EI</AirlineID>
                            <Name>Aer Lingus</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>320</AircraftCode>
                            <Name>Airbus A320 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H5M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                    <FlightSegment SegmentKey="BA1389">
                        <Departure>
                            <AirportCode>MAN</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>09:45</Time>
                            <AirportName>MANCHESTER</AirportName>
                            <Terminal>
                                <Name>3</Name>
                            </Terminal>
                        </Departure>
                        <Arrival>
                            <AirportCode>LHR</AirportCode>
                            <Date>2019-09-29</Date>
                            <Time>10:55</Time>
                            <ChangeOfDay>0</ChangeOfDay>
                            <AirportName>HEATHROW</AirportName>
                            <Terminal>
                                <Name>5</Name>
                            </Terminal>
                        </Arrival>
                        <MarketingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                            <FlightNumber>1389</FlightNumber>
                        </MarketingCarrier>
                        <OperatingCarrier>
                            <AirlineID>BA</AirlineID>
                            <Name>British Airways</Name>
                        </OperatingCarrier>
                        <Equipment>
                            <AircraftCode>319</AircraftCode>
                            <Name>Airbus A319 jet</Name>
                        </Equipment>
                        <FlightDetail>
                            <FlightDuration>
                                <Value>PT1H10M</Value>
                            </FlightDuration>
                        </FlightDetail>
                    </FlightSegment>
                </FlightSegmentList>
                <FlightList>
                    <Flight FlightKey="Flight1">
                        <Journey>
                            <Time>PT2H15M</Time>
                        </Journey>
                        <SegmentReferences>BA0947</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight2">
                        <Journey>
                            <Time>PT2H10M</Time>
                        </Journey>
                        <SegmentReferences>BA0949</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight3">
                        <Journey>
                            <Time>PT1H55M</Time>
                        </Journey>
                        <SegmentReferences>BA3292</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight4">
                        <Journey>
                            <Time>PT2H</Time>
                        </Journey>
                        <SegmentReferences>BA0953</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight5">
                        <Journey>
                            <Time>PT2H5M</Time>
                        </Journey>
                        <SegmentReferences>BA0951</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight6">
                        <Journey>
                            <Time>PT13H45M</Time>
                        </Journey>
                        <SegmentReferences>BA2091 BA0831</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight7">
                        <Journey>
                            <Time>PT6H40M</Time>
                        </Journey>
                        <SegmentReferences>BA2089 BA0837</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight8">
                        <Journey>
                            <Time>PT10H45M</Time>
                        </Journey>
                        <SegmentReferences>BA2089 BA0823</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight9">
                        <Journey>
                            <Time>PT12H40M</Time>
                        </Journey>
                        <SegmentReferences>BA2091 BA5952</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight10">
                        <Journey>
                            <Time>PT13H40M</Time>
                        </Journey>
                        <SegmentReferences>BA2091 BA5954</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight11">
                        <Journey>
                            <Time>PT5H35M</Time>
                        </Journey>
                        <SegmentReferences>BA2089 BA5968</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight12">
                        <Journey>
                            <Time>PT6H55M</Time>
                        </Journey>
                        <SegmentReferences>BA2089 BA5974</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight13">
                        <Journey>
                            <Time>PT7H55M</Time>
                        </Journey>
                        <SegmentReferences>BA2089 BA5976</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight14">
                        <Journey>
                            <Time>PT8H55M</Time>
                        </Journey>
                        <SegmentReferences>BA2089 BA5978</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight15">
                        <Journey>
                            <Time>PT9H55M</Time>
                        </Journey>
                        <SegmentReferences>BA2089 BA5970</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight16">
                        <Journey>
                            <Time>PT11H5M</Time>
                        </Journey>
                        <SegmentReferences>BA2089 BA5960</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight17">
                        <Journey>
                            <Time>PT13H15M</Time>
                        </Journey>
                        <SegmentReferences>BA2091 BA5900</SegmentReferences>
                    </Flight>
                    <Flight FlightKey="Flight18">
                        <Journey>
                            <Time>PT15H30M</Time>
                        </Journey>
                        <SegmentReferences>BA2091 BA2072 BA1389</SegmentReferences>
                    </Flight>
                </FlightList>
                <OriginDestinationList>
                    <OriginDestination OriginDestinationKey="OD1">
                        <DepartureCode>MUC</DepartureCode>
                        <ArrivalCode>LON</ArrivalCode>
                        <FlightReferences>Flight1 Flight2 Flight3 Flight4 Flight5 Flight6 Flight9
                            Flight10 Flight17 Flight18 Flight7 Flight8 Flight11 Flight12 Flight13
                            Flight14 Flight15 Flight16</FlightReferences>
                    </OriginDestination>
                </OriginDestinationList>
                <PriceClassList>
                    <PriceClass ObjectKey="BASIC">
                        <Name>BASIC</Name>
                        <Code>HBO</Code>
                        <Descriptions>
                            <Description>
                                <Text>Allocated seats or pay to choose anytime</Text>
                            </Description>
                            <Description>
                                <Text>Hand baggage only</Text>
                            </Description>
                            <Description>
                                <Text>Last to board</Text>
                            </Description>
                        </Descriptions>
                    </PriceClass>
                    <PriceClass ObjectKey="PLUS">
                        <Name>PLUS</Name>
                        <Descriptions>
                            <Description>
                                <Text>Free seat choice from 48 hours before departure</Text>
                            </Description>
                            <Description>
                                <Text>1 x 23kg checked baggage allowance</Text>
                            </Description>
                        </Descriptions>
                    </PriceClass>
                </PriceClassList>
            </DataLists>
            <Metadata>
                <Other>
                    <OtherMetadata>
                        <CurrencyMetadatas>
                            <CurrencyMetadata MetadataKey="EUR">
                                <Decimals>2</Decimals>
                            </CurrencyMetadata>
                        </CurrencyMetadatas>
                    </OtherMetadata>
                </Other>
            </Metadata>
        </AirShoppingRS>
    </soap:Body>
    </soap:Envelope>
    """
  end
end
