defmodule FlightFinder.Fixtures.KLM do
  @moduledoc """
  klm fixtures
  """

  def request_body do
    "<S:Envelope xmlns:S=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns=\"http://www.iata.org/IATA/2015/00/2018.2/IATA_AirShoppingRQ\">\n<S:Header />\n<S:Body>\n  <IATA_AirShoppingRQ>\n     <Party>\n        <Participant>\n           <Aggregator>\n              <AggregatorID>NDCABT</AggregatorID>\n              <Name>NDCABT</Name>\n           </Aggregator>\n        </Participant>\n        <Recipient>\n           <ORA>\n              <AirlineDesigCode>AF</AirlineDesigCode>\n           </ORA>\n        </Recipient>\n        <Sender>\n           <TravelAgency>\n              <AgencyID>12345675</AgencyID>\n              <IATANumber>12345675</IATANumber>\n              <Name>nom</Name>\n              <PseudoCityID>PAR</PseudoCityID>\n           </TravelAgency>\n        </Sender>\n     </Party>\n     <PayloadAttributes>\n        <CorrelationID>5</CorrelationID>\n        <VersionNumber>18.2</VersionNumber>\n     </PayloadAttributes>\n     <Request>\n        <FlightCriteria>\n           <OriginDestCriteria>\n              <DestArrivalCriteria>\n                 <IATALocationCode>LHR</IATALocationCode>\n              </DestArrivalCriteria>\n              <OriginDepCriteria>\n                 <Date>2021-09-26</Date>\n                 <IATALocationCode>MUC</IATALocationCode>\n              </OriginDepCriteria>\n              <PreferredCabinType>\n                 <CabinTypeName>ECONOMY</CabinTypeName>\n              </PreferredCabinType>\n           </OriginDestCriteria>\n        </FlightCriteria>\n        <Paxs>\n           <Pax>\n              <PaxID>PAX1</PaxID>\n              <PTC>ADT</PTC>\n           </Pax>\n        </Paxs>\n     </Request>\n  </IATA_AirShoppingRQ>\n</S:Body>\n</S:Envelope>\n"
  end

  def flights do
    """
    <S:Envelope xmlns:S="http://schemas.xmlsoap.org/soap/envelope/">
    <S:Header>
      <trackingMessageHeader xmlns="http://www.af-klm.com/soa/xsd/MessageHeader-V1_0">
        <consumerRef>
          <userID/>
          <partyID>unidentified</partyID>
          <consumerID>unidentified</consumerID>
          <consumerLocation>unidentified</consumerLocation>
          <consumerType>unidentified</consumerType>
          <consumerTime>2021-05-18T09:01:26Z</consumerTime>
        </consumerRef>
      </trackingMessageHeader>
      <MessageID xmlns="http://www.w3.org/2005/08/addressing">uuid:4483eb37-01c2-4753-a5a1-039176bbaf9c</MessageID>
      <RelatesTo xmlns="http://www.w3.org/2005/08/addressing" RelationshipType="http://www.af-klm.com/soa/tracking/ReplyTo">uuid:esb9793cdcb-3284-4157-9401-d6253f45057a</RelatesTo>
      <RelatesTo xmlns="http://www.w3.org/2005/08/addressing" RelationshipType="http://www.af-klm.com/soa/tracking/InitiatedBy">uuid:esb9793cdcb-3284-4157-9401-d6253f45057a</RelatesTo>
    </S:Header>
    <S:Body>
      <ns2:IATA_AirShoppingRS xmlns:ns2="http://www.iata.org/IATA/2015/00/2018.2/IATA_AirShoppingRS" xmlns="http://www.iata.org/IATA/2015/00/2018.2/IATA_AirShoppingRQ">
        <ns2:Response>
          <ns2:DataLists>
            <ns2:BaggageAllowanceList>
              <ns2:BaggageAllowance>
                <ns2:BaggageAllowanceID>BA1</ns2:BaggageAllowanceID>
                <ns2:PieceAllowance>
                  <ns2:ApplicablePartyText>Traveler</ns2:ApplicablePartyText>
                  <ns2:TotalQty>0</ns2:TotalQty>
                </ns2:PieceAllowance>
                <ns2:TypeCode>Checked</ns2:TypeCode>
              </ns2:BaggageAllowance>
              <ns2:BaggageAllowance>
                <ns2:BaggageAllowanceID>BA2</ns2:BaggageAllowanceID>
                <ns2:PieceAllowance>
                  <ns2:ApplicablePartyText>Traveler</ns2:ApplicablePartyText>
                  <ns2:TotalQty>1</ns2:TotalQty>
                </ns2:PieceAllowance>
                <ns2:TypeCode>Checked</ns2:TypeCode>
              </ns2:BaggageAllowance>
            </ns2:BaggageAllowanceList>
            <ns2:OriginDestList>
              <ns2:OriginDest>
                <ns2:DestCode>LHR</ns2:DestCode>
                <ns2:OriginCode>MUC</ns2:OriginCode>
                <ns2:OriginDestID>OD1</ns2:OriginDestID>
                <ns2:PaxJourneyRefID>PJ1</ns2:PaxJourneyRefID>
                <ns2:PaxJourneyRefID>PJ2</ns2:PaxJourneyRefID>
              </ns2:OriginDest>
            </ns2:OriginDestList>
            <ns2:PaxJourneyList>
              <ns2:PaxJourney>
                <ns2:Duration>P0Y0M0DT7H10M0.000S</ns2:Duration>
                <ns2:PaxJourneyID>PJ1</ns2:PaxJourneyID>
                <ns2:PaxSegmentRefID>SEG1</ns2:PaxSegmentRefID>
                <ns2:PaxSegmentRefID>SEG2</ns2:PaxSegmentRefID>
              </ns2:PaxJourney>
              <ns2:PaxJourney>
                <ns2:Duration>P0Y0M0DT10H10M0.000S</ns2:Duration>
                <ns2:PaxJourneyID>PJ2</ns2:PaxJourneyID>
                <ns2:PaxSegmentRefID>SEG3</ns2:PaxSegmentRefID>
                <ns2:PaxSegmentRefID>SEG2</ns2:PaxSegmentRefID>
              </ns2:PaxJourney>
            </ns2:PaxJourneyList>
            <ns2:PaxList>
              <ns2:Pax>
                <ns2:PaxID>PAX1</ns2:PaxID>
                <ns2:PTC>ADT</ns2:PTC>
              </ns2:Pax>
            </ns2:PaxList>
            <ns2:PaxSegmentList>
              <ns2:PaxSegment>
                <ns2:Arrival>
                  <ns2:AircraftScheduledDateTime>2021-09-26T14:10:00</ns2:AircraftScheduledDateTime>
                  <ns2:IATALocationCode>CDG</ns2:IATALocationCode>
                  <ns2:TerminalName>2F</ns2:TerminalName>
                </ns2:Arrival>
                <ns2:DatedOperatingLeg>
                  <ns2:Arrival/>
                  <ns2:DatedOperatingLegID>LEG1</ns2:DatedOperatingLegID>
                  <ns2:Dep/>
                  <ns2:IATAAircraftType>
                    <ns2:IATAAircraftTypeCode>319</ns2:IATAAircraftTypeCode>
                  </ns2:IATAAircraftType>
                </ns2:DatedOperatingLeg>
                <ns2:Dep>
                  <ns2:AircraftScheduledDateTime>2021-09-26T12:25:00</ns2:AircraftScheduledDateTime>
                  <ns2:IATALocationCode>MUC</ns2:IATALocationCode>
                  <ns2:TerminalName>1</ns2:TerminalName>
                </ns2:Dep>
                <ns2:MarketingCarrierInfo>
                  <ns2:CarrierDesigCode>AF</ns2:CarrierDesigCode>
                  <ns2:MarketingCarrierFlightNumberText>1723</ns2:MarketingCarrierFlightNumberText>
                </ns2:MarketingCarrierInfo>
                <ns2:OperatingCarrierInfo>
                  <ns2:CarrierDesigCode>AF</ns2:CarrierDesigCode>
                </ns2:OperatingCarrierInfo>
                <ns2:PaxSegmentID>SEG1</ns2:PaxSegmentID>
              </ns2:PaxSegment>
              <ns2:PaxSegment>
                <ns2:Arrival>
                  <ns2:AircraftScheduledDateTime>2021-09-26T18:35:00</ns2:AircraftScheduledDateTime>
                  <ns2:IATALocationCode>LHR</ns2:IATALocationCode>
                  <ns2:TerminalName>4</ns2:TerminalName>
                </ns2:Arrival>
                <ns2:DatedOperatingLeg>
                  <ns2:Arrival/>
                  <ns2:DatedOperatingLegID>LEG2</ns2:DatedOperatingLegID>
                  <ns2:Dep/>
                  <ns2:IATAAircraftType>
                    <ns2:IATAAircraftTypeCode>321</ns2:IATAAircraftTypeCode>
                  </ns2:IATAAircraftType>
                </ns2:DatedOperatingLeg>
                <ns2:Dep>
                  <ns2:AircraftScheduledDateTime>2021-09-26T18:15:00</ns2:AircraftScheduledDateTime>
                  <ns2:IATALocationCode>CDG</ns2:IATALocationCode>
                  <ns2:TerminalName>2E</ns2:TerminalName>
                </ns2:Dep>
                <ns2:MarketingCarrierInfo>
                  <ns2:CarrierDesigCode>AF</ns2:CarrierDesigCode>
                  <ns2:MarketingCarrierFlightNumberText>1180</ns2:MarketingCarrierFlightNumberText>
                </ns2:MarketingCarrierInfo>
                <ns2:OperatingCarrierInfo>
                  <ns2:CarrierDesigCode>AF</ns2:CarrierDesigCode>
                </ns2:OperatingCarrierInfo>
                <ns2:PaxSegmentID>SEG2</ns2:PaxSegmentID>
              </ns2:PaxSegment>
              <ns2:PaxSegment>
                <ns2:Arrival>
                  <ns2:AircraftScheduledDateTime>2021-09-26T11:10:00</ns2:AircraftScheduledDateTime>
                  <ns2:IATALocationCode>ORY</ns2:IATALocationCode>
                  <ns2:TerminalName>1</ns2:TerminalName>
                </ns2:Arrival>
                <ns2:DatedOperatingLeg>
                  <ns2:Arrival/>
                  <ns2:DatedOperatingLegID>LEG3</ns2:DatedOperatingLegID>
                  <ns2:Dep/>
                  <ns2:IATAAircraftType>
                    <ns2:IATAAircraftTypeCode>E90</ns2:IATAAircraftTypeCode>
                  </ns2:IATAAircraftType>
                </ns2:DatedOperatingLeg>
                <ns2:Dep>
                  <ns2:AircraftScheduledDateTime>2021-09-26T09:25:00</ns2:AircraftScheduledDateTime>
                  <ns2:IATALocationCode>MUC</ns2:IATALocationCode>
                  <ns2:TerminalName>1</ns2:TerminalName>
                </ns2:Dep>
                <ns2:MarketingCarrierInfo>
                  <ns2:CarrierDesigCode>AF</ns2:CarrierDesigCode>
                  <ns2:MarketingCarrierFlightNumberText>7351</ns2:MarketingCarrierFlightNumberText>
                </ns2:MarketingCarrierInfo>
                <ns2:OperatingCarrierInfo>
                  <ns2:CarrierDesigCode>A5</ns2:CarrierDesigCode>
                </ns2:OperatingCarrierInfo>
                <ns2:PaxSegmentID>SEG3</ns2:PaxSegmentID>
              </ns2:PaxSegment>
            </ns2:PaxSegmentList>
            <ns2:PriceClassList>
              <ns2:PriceClass>
                <ns2:CabinType>
                  <ns2:CabinTypeName>ECONOMY</ns2:CabinTypeName>
                </ns2:CabinType>
                <ns2:FareBasisCode>ES50BALG</ns2:FareBasisCode>
                <ns2:Name>Light</ns2:Name>
                <ns2:PriceClassID>PC1</ns2:PriceClassID>
              </ns2:PriceClass>
              <ns2:PriceClass>
                <ns2:CabinType>
                  <ns2:CabinTypeName>ECONOMY</ns2:CabinTypeName>
                </ns2:CabinType>
                <ns2:FareBasisCode>ES50BBST</ns2:FareBasisCode>
                <ns2:Name>Standard</ns2:Name>
                <ns2:PriceClassID>PC2</ns2:PriceClassID>
              </ns2:PriceClass>
              <ns2:PriceClass>
                <ns2:CabinType>
                  <ns2:CabinTypeName>ECONOMY</ns2:CabinTypeName>
                </ns2:CabinType>
                <ns2:Desc>
                  <ns2:DescText>FREE_SEAT_INCLUDED</ns2:DescText>
                </ns2:Desc>
                <ns2:FareBasisCode>ES50BEFX</ns2:FareBasisCode>
                <ns2:Name>Flex</ns2:Name>
                <ns2:PriceClassID>PC3</ns2:PriceClassID>
              </ns2:PriceClass>
              <ns2:PriceClass>
                <ns2:CabinType>
                  <ns2:CabinTypeName>ECONOMY</ns2:CabinTypeName>
                </ns2:CabinType>
                <ns2:FareBasisCode>KS50BALG</ns2:FareBasisCode>
                <ns2:Name>Light</ns2:Name>
                <ns2:PriceClassID>PC4</ns2:PriceClassID>
              </ns2:PriceClass>
              <ns2:PriceClass>
                <ns2:CabinType>
                  <ns2:CabinTypeName>ECONOMY</ns2:CabinTypeName>
                </ns2:CabinType>
                <ns2:FareBasisCode>KS50BBST</ns2:FareBasisCode>
                <ns2:Name>Standard</ns2:Name>
                <ns2:PriceClassID>PC5</ns2:PriceClassID>
              </ns2:PriceClass>
              <ns2:PriceClass>
                <ns2:CabinType>
                  <ns2:CabinTypeName>ECONOMY</ns2:CabinTypeName>
                </ns2:CabinType>
                <ns2:Desc>
                  <ns2:DescText>FREE_SEAT_INCLUDED</ns2:DescText>
                </ns2:Desc>
                <ns2:FareBasisCode>KS50BEFX</ns2:FareBasisCode>
                <ns2:Name>Flex</ns2:Name>
                <ns2:PriceClassID>PC6</ns2:PriceClassID>
              </ns2:PriceClass>
            </ns2:PriceClassList>
            <ns2:ServiceDefinitionList>
              <ns2:ServiceDefinition>
                <ns2:Desc>
                  <ns2:DescText>FREE_SEAT_INCLUDED</ns2:DescText>
                </ns2:Desc>
                <ns2:Name>FREE_SEAT</ns2:Name>
                <ns2:ServiceDefinitionID>SRV-SEAT</ns2:ServiceDefinitionID>
              </ns2:ServiceDefinition>
            </ns2:ServiceDefinitionList>
          </ns2:DataLists>
          <ns2:OffersGroup>
            <ns2:CarrierOffers>
              <ns2:Offer>
                <ns2:BaggageAllowance>
                  <ns2:BaggageAllowanceRefID>BA1</ns2:BaggageAllowanceRefID>
                  <ns2:PaxJourneyRefID>PJ1</ns2:PaxJourneyRefID>
                  <ns2:PaxRefID>PAX1</ns2:PaxRefID>
                </ns2:BaggageAllowance>
                <ns2:JourneyOverview>
                  <ns2:JourneyPriceClass>
                    <ns2:PaxJourneyRefID>PJ1</ns2:PaxJourneyRefID>
                    <ns2:PriceClassRefID>PC1</ns2:PriceClassRefID>
                  </ns2:JourneyPriceClass>
                </ns2:JourneyOverview>
                <ns2:OfferExpirationDateTime>2021-05-18T09:31:27.727Z</ns2:OfferExpirationDateTime>
                <ns2:OfferID>e935785a-84a1-4b1a-b578-5a84a16b0001</ns2:OfferID>
                <ns2:OfferItem>
                  <ns2:FareDetail>
                    <ns2:FareComponent>
                      <ns2:FareTypeCode>70J</ns2:FareTypeCode>
                    </ns2:FareComponent>
                    <ns2:FareComponent>
                      <ns2:PaxSegmentRefID>SEG1</ns2:PaxSegmentRefID>
                      <ns2:PaxSegmentRefID>SEG2</ns2:PaxSegmentRefID>
                      <ns2:PriceClassRefID>PC1</ns2:PriceClassRefID>
                    </ns2:FareComponent>
                    <ns2:FareComponent>
                      <ns2:FareRule>
                        <ns2:Penalty>
                          <ns2:ChangeFeeInd>false</ns2:ChangeFeeInd>
                          <ns2:PenaltyAmount CurCode="EUR">0.00</ns2:PenaltyAmount>
                          <ns2:TypeCode>Change</ns2:TypeCode>
                        </ns2:Penalty>
                      </ns2:FareRule>
                      <ns2:PaxSegmentRefID>SEG1</ns2:PaxSegmentRefID>
                      <ns2:PaxSegmentRefID>SEG2</ns2:PaxSegmentRefID>
                    </ns2:FareComponent>
                    <ns2:FarePriceType>
                      <ns2:FarePriceTypeCode>70J</ns2:FarePriceTypeCode>
                      <ns2:Price>
                        <ns2:BaseAmount CurCode="EUR">138.00</ns2:BaseAmount>
                        <ns2:TaxSummary>
                          <ns2:TotalTaxAmount CurCode="EUR">61.29</ns2:TotalTaxAmount>
                        </ns2:TaxSummary>
                        <ns2:TotalAmount CurCode="EUR">199.29</ns2:TotalAmount>
                      </ns2:Price>
                    </ns2:FarePriceType>
                    <ns2:PaxRefID>PAX1</ns2:PaxRefID>
                  </ns2:FareDetail>
                  <ns2:OfferItemID>d4064a5b-d030-4cfc-864a-5bd030dcfcbf</ns2:OfferItemID>
                  <ns2:Price>
                    <ns2:BaseAmount CurCode="EUR">138.00</ns2:BaseAmount>
                    <ns2:TaxSummary>
                      <ns2:TotalTaxAmount CurCode="EUR">61.29</ns2:TotalTaxAmount>
                    </ns2:TaxSummary>
                    <ns2:TotalAmount CurCode="EUR">199.29</ns2:TotalAmount>
                  </ns2:Price>
                  <ns2:Service>
                    <ns2:PaxRefID>PAX1</ns2:PaxRefID>
                    <ns2:ServiceAssociations>
                      <ns2:PaxJourneyRefID>PJ1</ns2:PaxJourneyRefID>
                    </ns2:ServiceAssociations>
                    <ns2:ServiceID>SV0</ns2:ServiceID>
                  </ns2:Service>
                </ns2:OfferItem>
                <ns2:OwnerCode>AF</ns2:OwnerCode>
                <ns2:TotalPrice>
                  <ns2:BaseAmount CurCode="EUR">138.00</ns2:BaseAmount>
                  <ns2:TaxSummary>
                    <ns2:TotalTaxAmount CurCode="EUR">61.29</ns2:TotalTaxAmount>
                  </ns2:TaxSummary>
                  <ns2:TotalAmount CurCode="EUR">199.29</ns2:TotalAmount>
                </ns2:TotalPrice>
              </ns2:Offer>
              <ns2:Offer>
                <ns2:BaggageAllowance>
                  <ns2:BaggageAllowanceRefID>BA2</ns2:BaggageAllowanceRefID>
                  <ns2:PaxJourneyRefID>PJ1</ns2:PaxJourneyRefID>
                  <ns2:PaxRefID>PAX1</ns2:PaxRefID>
                </ns2:BaggageAllowance>
                <ns2:JourneyOverview>
                  <ns2:JourneyPriceClass>
                    <ns2:PaxJourneyRefID>PJ1</ns2:PaxJourneyRefID>
                    <ns2:PriceClassRefID>PC2</ns2:PriceClassRefID>
                  </ns2:JourneyPriceClass>
                </ns2:JourneyOverview>
                <ns2:OfferExpirationDateTime>2021-05-18T09:31:27.727Z</ns2:OfferExpirationDateTime>
                <ns2:OfferID>e935785a-84a1-4b1a-b578-5a84a16b0002</ns2:OfferID>
                <ns2:OfferItem>
                  <ns2:FareDetail>
                    <ns2:FareComponent>
                      <ns2:FareTypeCode>70J</ns2:FareTypeCode>
                    </ns2:FareComponent>
                    <ns2:FareComponent>
                      <ns2:PaxSegmentRefID>SEG1</ns2:PaxSegmentRefID>
                      <ns2:PaxSegmentRefID>SEG2</ns2:PaxSegmentRefID>
                      <ns2:PriceClassRefID>PC2</ns2:PriceClassRefID>
                    </ns2:FareComponent>
                    <ns2:FareComponent>
                      <ns2:FareRule>
                        <ns2:Penalty>
                          <ns2:ChangeFeeInd>false</ns2:ChangeFeeInd>
                          <ns2:PenaltyAmount CurCode="EUR">0.00</ns2:PenaltyAmount>
                          <ns2:TypeCode>Change</ns2:TypeCode>
                        </ns2:Penalty>
                      </ns2:FareRule>
                      <ns2:PaxSegmentRefID>SEG1</ns2:PaxSegmentRefID>
                      <ns2:PaxSegmentRefID>SEG2</ns2:PaxSegmentRefID>
                    </ns2:FareComponent>
                    <ns2:FarePriceType>
                      <ns2:FarePriceTypeCode>70J</ns2:FarePriceTypeCode>
                      <ns2:Price>
                        <ns2:BaseAmount CurCode="EUR">171.00</ns2:BaseAmount>
                        <ns2:TaxSummary>
                          <ns2:TotalTaxAmount CurCode="EUR">61.29</ns2:TotalTaxAmount>
                        </ns2:TaxSummary>
                        <ns2:TotalAmount CurCode="EUR">232.29</ns2:TotalAmount>
                      </ns2:Price>
                    </ns2:FarePriceType>
                    <ns2:PaxRefID>PAX1</ns2:PaxRefID>
                  </ns2:FareDetail>
                  <ns2:OfferItemID>ec6a83cc-47fe-45dd-aa83-cc47fea5dd53</ns2:OfferItemID>
                  <ns2:Price>
                    <ns2:BaseAmount CurCode="EUR">171.00</ns2:BaseAmount>
                    <ns2:TaxSummary>
                      <ns2:TotalTaxAmount CurCode="EUR">61.29</ns2:TotalTaxAmount>
                    </ns2:TaxSummary>
                    <ns2:TotalAmount CurCode="EUR">232.29</ns2:TotalAmount>
                  </ns2:Price>
                  <ns2:Service>
                    <ns2:PaxRefID>PAX1</ns2:PaxRefID>
                    <ns2:ServiceAssociations>
                      <ns2:PaxJourneyRefID>PJ1</ns2:PaxJourneyRefID>
                    </ns2:ServiceAssociations>
                    <ns2:ServiceID>SV1</ns2:ServiceID>
                  </ns2:Service>
                </ns2:OfferItem>
                <ns2:OwnerCode>AF</ns2:OwnerCode>
                <ns2:TotalPrice>
                  <ns2:BaseAmount CurCode="EUR">171.00</ns2:BaseAmount>
                  <ns2:TaxSummary>
                    <ns2:TotalTaxAmount CurCode="EUR">61.29</ns2:TotalTaxAmount>
                  </ns2:TaxSummary>
                  <ns2:TotalAmount CurCode="EUR">232.29</ns2:TotalAmount>
                </ns2:TotalPrice>
              </ns2:Offer>
              <ns2:Offer>
                <ns2:BaggageAllowance>
                  <ns2:BaggageAllowanceRefID>BA2</ns2:BaggageAllowanceRefID>
                  <ns2:PaxJourneyRefID>PJ1</ns2:PaxJourneyRefID>
                  <ns2:PaxRefID>PAX1</ns2:PaxRefID>
                </ns2:BaggageAllowance>
                <ns2:JourneyOverview>
                  <ns2:JourneyPriceClass>
                    <ns2:PaxJourneyRefID>PJ1</ns2:PaxJourneyRefID>
                    <ns2:PriceClassRefID>PC3</ns2:PriceClassRefID>
                  </ns2:JourneyPriceClass>
                </ns2:JourneyOverview>
                <ns2:OfferExpirationDateTime>2021-05-18T09:31:27.727Z</ns2:OfferExpirationDateTime>
                <ns2:OfferID>e935785a-84a1-4b1a-b578-5a84a16b0003</ns2:OfferID>
                <ns2:OfferItem>
                  <ns2:FareDetail>
                    <ns2:FareComponent>
                      <ns2:FareTypeCode>70J</ns2:FareTypeCode>
                    </ns2:FareComponent>
                    <ns2:FareComponent>
                      <ns2:PaxSegmentRefID>SEG1</ns2:PaxSegmentRefID>
                      <ns2:PaxSegmentRefID>SEG2</ns2:PaxSegmentRefID>
                      <ns2:PriceClassRefID>PC3</ns2:PriceClassRefID>
                    </ns2:FareComponent>
                    <ns2:FareComponent>
                      <ns2:FareRule>
                        <ns2:Penalty>
                          <ns2:ChangeFeeInd>false</ns2:ChangeFeeInd>
                          <ns2:PenaltyAmount CurCode="EUR">0.00</ns2:PenaltyAmount>
                          <ns2:TypeCode>Change</ns2:TypeCode>
                        </ns2:Penalty>
                        <ns2:Penalty>
                          <ns2:CancelFeeInd>false</ns2:CancelFeeInd>
                          <ns2:PenaltyAmount CurCode="EUR">0.00</ns2:PenaltyAmount>
                          <ns2:TypeCode>Cancellation</ns2:TypeCode>
                        </ns2:Penalty>
                      </ns2:FareRule>
                      <ns2:PaxSegmentRefID>SEG1</ns2:PaxSegmentRefID>
                      <ns2:PaxSegmentRefID>SEG2</ns2:PaxSegmentRefID>
                    </ns2:FareComponent>
                    <ns2:FarePriceType>
                      <ns2:FarePriceTypeCode>70J</ns2:FarePriceTypeCode>
                      <ns2:Price>
                        <ns2:BaseAmount CurCode="EUR">236.00</ns2:BaseAmount>
                        <ns2:TaxSummary>
                          <ns2:TotalTaxAmount CurCode="EUR">61.29</ns2:TotalTaxAmount>
                        </ns2:TaxSummary>
                        <ns2:TotalAmount CurCode="EUR">297.29</ns2:TotalAmount>
                      </ns2:Price>
                    </ns2:FarePriceType>
                    <ns2:PaxRefID>PAX1</ns2:PaxRefID>
                  </ns2:FareDetail>
                  <ns2:OfferItemID>d55e610c-cb6a-45e7-9e61-0ccb6a25e7c3</ns2:OfferItemID>
                  <ns2:Price>
                    <ns2:BaseAmount CurCode="EUR">236.00</ns2:BaseAmount>
                    <ns2:TaxSummary>
                      <ns2:TotalTaxAmount CurCode="EUR">61.29</ns2:TotalTaxAmount>
                    </ns2:TaxSummary>
                    <ns2:TotalAmount CurCode="EUR">297.29</ns2:TotalAmount>
                  </ns2:Price>
                  <ns2:Service>
                    <ns2:PaxRefID>PAX1</ns2:PaxRefID>
                    <ns2:ServiceAssociations>
                      <ns2:PaxJourneyRefID>PJ1</ns2:PaxJourneyRefID>
                    </ns2:ServiceAssociations>
                    <ns2:ServiceID>SV2</ns2:ServiceID>
                  </ns2:Service>
                  <ns2:Service>
                    <ns2:PaxRefID>PAX1</ns2:PaxRefID>
                    <ns2:ServiceAssociations>
                      <ns2:ServiceDefinitionRef>
                        <ns2:PaxSegmentRefID>SEG1</ns2:PaxSegmentRefID>
                        <ns2:PaxSegmentRefID>SEG2</ns2:PaxSegmentRefID>
                        <ns2:ServiceDefinitionRefID>SRV-SEAT</ns2:ServiceDefinitionRefID>
                      </ns2:ServiceDefinitionRef>
                    </ns2:ServiceAssociations>
                    <ns2:ServiceID>SRVID2_SI</ns2:ServiceID>
                  </ns2:Service>
                </ns2:OfferItem>
                <ns2:OwnerCode>AF</ns2:OwnerCode>
                <ns2:TotalPrice>
                  <ns2:BaseAmount CurCode="EUR">236.00</ns2:BaseAmount>
                  <ns2:TaxSummary>
                    <ns2:TotalTaxAmount CurCode="EUR">61.29</ns2:TotalTaxAmount>
                  </ns2:TaxSummary>
                  <ns2:TotalAmount CurCode="EUR">297.29</ns2:TotalAmount>
                </ns2:TotalPrice>
              </ns2:Offer>
              <ns2:Offer>
                <ns2:BaggageAllowance>
                  <ns2:BaggageAllowanceRefID>BA1</ns2:BaggageAllowanceRefID>
                  <ns2:PaxJourneyRefID>PJ2</ns2:PaxJourneyRefID>
                  <ns2:PaxRefID>PAX1</ns2:PaxRefID>
                </ns2:BaggageAllowance>
                <ns2:JourneyOverview>
                  <ns2:JourneyPriceClass>
                    <ns2:PaxJourneyRefID>PJ2</ns2:PaxJourneyRefID>
                    <ns2:PriceClassRefID>PC4</ns2:PriceClassRefID>
                  </ns2:JourneyPriceClass>
                </ns2:JourneyOverview>
                <ns2:OfferExpirationDateTime>2021-05-18T09:31:27.727Z</ns2:OfferExpirationDateTime>
                <ns2:OfferID>e935785a-84a1-4b1a-b578-5a84a16b0004</ns2:OfferID>
                <ns2:OfferItem>
                  <ns2:FareDetail>
                    <ns2:FareComponent>
                      <ns2:FareTypeCode>70J</ns2:FareTypeCode>
                    </ns2:FareComponent>
                    <ns2:FareComponent>
                      <ns2:PaxSegmentRefID>SEG3</ns2:PaxSegmentRefID>
                      <ns2:PaxSegmentRefID>SEG2</ns2:PaxSegmentRefID>
                      <ns2:PriceClassRefID>PC4</ns2:PriceClassRefID>
                    </ns2:FareComponent>
                    <ns2:FareComponent>
                      <ns2:FareRule>
                        <ns2:Penalty>
                          <ns2:ChangeFeeInd>false</ns2:ChangeFeeInd>
                          <ns2:PenaltyAmount CurCode="EUR">0.00</ns2:PenaltyAmount>
                          <ns2:TypeCode>Change</ns2:TypeCode>
                        </ns2:Penalty>
                      </ns2:FareRule>
                      <ns2:PaxSegmentRefID>SEG3</ns2:PaxSegmentRefID>
                      <ns2:PaxSegmentRefID>SEG2</ns2:PaxSegmentRefID>
                    </ns2:FareComponent>
                    <ns2:FarePriceType>
                      <ns2:FarePriceTypeCode>70J</ns2:FarePriceTypeCode>
                      <ns2:Price>
                        <ns2:BaseAmount CurCode="EUR">213.00</ns2:BaseAmount>
                        <ns2:TaxSummary>
                          <ns2:TotalTaxAmount CurCode="EUR">61.29</ns2:TotalTaxAmount>
                        </ns2:TaxSummary>
                        <ns2:TotalAmount CurCode="EUR">274.29</ns2:TotalAmount>
                      </ns2:Price>
                    </ns2:FarePriceType>
                    <ns2:PaxRefID>PAX1</ns2:PaxRefID>
                  </ns2:FareDetail>
                  <ns2:OfferItemID>d5ea7cf2-75bb-4f89-aa7c-f275bbcf890e</ns2:OfferItemID>
                  <ns2:Price>
                    <ns2:BaseAmount CurCode="EUR">213.00</ns2:BaseAmount>
                    <ns2:TaxSummary>
                      <ns2:TotalTaxAmount CurCode="EUR">61.29</ns2:TotalTaxAmount>
                    </ns2:TaxSummary>
                    <ns2:TotalAmount CurCode="EUR">274.29</ns2:TotalAmount>
                  </ns2:Price>
                  <ns2:Service>
                    <ns2:PaxRefID>PAX1</ns2:PaxRefID>
                    <ns2:ServiceAssociations>
                      <ns2:PaxJourneyRefID>PJ2</ns2:PaxJourneyRefID>
                    </ns2:ServiceAssociations>
                    <ns2:ServiceID>SV3</ns2:ServiceID>
                  </ns2:Service>
                </ns2:OfferItem>
                <ns2:OwnerCode>AF</ns2:OwnerCode>
                <ns2:TotalPrice>
                  <ns2:BaseAmount CurCode="EUR">213.00</ns2:BaseAmount>
                  <ns2:TaxSummary>
                    <ns2:TotalTaxAmount CurCode="EUR">61.29</ns2:TotalTaxAmount>
                  </ns2:TaxSummary>
                  <ns2:TotalAmount CurCode="EUR">274.29</ns2:TotalAmount>
                </ns2:TotalPrice>
              </ns2:Offer>
              <ns2:Offer>
                <ns2:BaggageAllowance>
                  <ns2:BaggageAllowanceRefID>BA2</ns2:BaggageAllowanceRefID>
                  <ns2:PaxJourneyRefID>PJ2</ns2:PaxJourneyRefID>
                  <ns2:PaxRefID>PAX1</ns2:PaxRefID>
                </ns2:BaggageAllowance>
                <ns2:JourneyOverview>
                  <ns2:JourneyPriceClass>
                    <ns2:PaxJourneyRefID>PJ2</ns2:PaxJourneyRefID>
                    <ns2:PriceClassRefID>PC5</ns2:PriceClassRefID>
                  </ns2:JourneyPriceClass>
                </ns2:JourneyOverview>
                <ns2:OfferExpirationDateTime>2021-05-18T09:31:27.727Z</ns2:OfferExpirationDateTime>
                <ns2:OfferID>e935785a-84a1-4b1a-b578-5a84a16b0005</ns2:OfferID>
                <ns2:OfferItem>
                  <ns2:FareDetail>
                    <ns2:FareComponent>
                      <ns2:FareTypeCode>70J</ns2:FareTypeCode>
                    </ns2:FareComponent>
                    <ns2:FareComponent>
                      <ns2:PaxSegmentRefID>SEG3</ns2:PaxSegmentRefID>
                      <ns2:PaxSegmentRefID>SEG2</ns2:PaxSegmentRefID>
                      <ns2:PriceClassRefID>PC5</ns2:PriceClassRefID>
                    </ns2:FareComponent>
                    <ns2:FareComponent>
                      <ns2:FareRule>
                        <ns2:Penalty>
                          <ns2:ChangeFeeInd>false</ns2:ChangeFeeInd>
                          <ns2:PenaltyAmount CurCode="EUR">0.00</ns2:PenaltyAmount>
                          <ns2:TypeCode>Change</ns2:TypeCode>
                        </ns2:Penalty>
                      </ns2:FareRule>
                      <ns2:PaxSegmentRefID>SEG3</ns2:PaxSegmentRefID>
                      <ns2:PaxSegmentRefID>SEG2</ns2:PaxSegmentRefID>
                    </ns2:FareComponent>
                    <ns2:FarePriceType>
                      <ns2:FarePriceTypeCode>70J</ns2:FarePriceTypeCode>
                      <ns2:Price>
                        <ns2:BaseAmount CurCode="EUR">246.00</ns2:BaseAmount>
                        <ns2:TaxSummary>
                          <ns2:TotalTaxAmount CurCode="EUR">61.29</ns2:TotalTaxAmount>
                        </ns2:TaxSummary>
                        <ns2:TotalAmount CurCode="EUR">307.29</ns2:TotalAmount>
                      </ns2:Price>
                    </ns2:FarePriceType>
                    <ns2:PaxRefID>PAX1</ns2:PaxRefID>
                  </ns2:FareDetail>
                  <ns2:OfferItemID>c9d8b362-401e-4360-98b3-62401ef36069</ns2:OfferItemID>
                  <ns2:Price>
                    <ns2:BaseAmount CurCode="EUR">246.00</ns2:BaseAmount>
                    <ns2:TaxSummary>
                      <ns2:TotalTaxAmount CurCode="EUR">61.29</ns2:TotalTaxAmount>
                    </ns2:TaxSummary>
                    <ns2:TotalAmount CurCode="EUR">307.29</ns2:TotalAmount>
                  </ns2:Price>
                  <ns2:Service>
                    <ns2:PaxRefID>PAX1</ns2:PaxRefID>
                    <ns2:ServiceAssociations>
                      <ns2:PaxJourneyRefID>PJ2</ns2:PaxJourneyRefID>
                    </ns2:ServiceAssociations>
                    <ns2:ServiceID>SV4</ns2:ServiceID>
                  </ns2:Service>
                </ns2:OfferItem>
                <ns2:OwnerCode>AF</ns2:OwnerCode>
                <ns2:TotalPrice>
                  <ns2:BaseAmount CurCode="EUR">246.00</ns2:BaseAmount>
                  <ns2:TaxSummary>
                    <ns2:TotalTaxAmount CurCode="EUR">61.29</ns2:TotalTaxAmount>
                  </ns2:TaxSummary>
                  <ns2:TotalAmount CurCode="EUR">307.29</ns2:TotalAmount>
                </ns2:TotalPrice>
              </ns2:Offer>
              <ns2:Offer>
                <ns2:BaggageAllowance>
                  <ns2:BaggageAllowanceRefID>BA2</ns2:BaggageAllowanceRefID>
                  <ns2:PaxJourneyRefID>PJ2</ns2:PaxJourneyRefID>
                  <ns2:PaxRefID>PAX1</ns2:PaxRefID>
                </ns2:BaggageAllowance>
                <ns2:JourneyOverview>
                  <ns2:JourneyPriceClass>
                    <ns2:PaxJourneyRefID>PJ2</ns2:PaxJourneyRefID>
                    <ns2:PriceClassRefID>PC6</ns2:PriceClassRefID>
                  </ns2:JourneyPriceClass>
                </ns2:JourneyOverview>
                <ns2:OfferExpirationDateTime>2021-05-18T09:31:27.727Z</ns2:OfferExpirationDateTime>
                <ns2:OfferID>e935785a-84a1-4b1a-b578-5a84a16b0006</ns2:OfferID>
                <ns2:OfferItem>
                  <ns2:FareDetail>
                    <ns2:FareComponent>
                      <ns2:FareTypeCode>70J</ns2:FareTypeCode>
                    </ns2:FareComponent>
                    <ns2:FareComponent>
                      <ns2:PaxSegmentRefID>SEG3</ns2:PaxSegmentRefID>
                      <ns2:PaxSegmentRefID>SEG2</ns2:PaxSegmentRefID>
                      <ns2:PriceClassRefID>PC6</ns2:PriceClassRefID>
                    </ns2:FareComponent>
                    <ns2:FareComponent>
                      <ns2:FareRule>
                        <ns2:Penalty>
                          <ns2:ChangeFeeInd>false</ns2:ChangeFeeInd>
                          <ns2:PenaltyAmount CurCode="EUR">0.00</ns2:PenaltyAmount>
                          <ns2:TypeCode>Change</ns2:TypeCode>
                        </ns2:Penalty>
                        <ns2:Penalty>
                          <ns2:CancelFeeInd>false</ns2:CancelFeeInd>
                          <ns2:PenaltyAmount CurCode="EUR">0.00</ns2:PenaltyAmount>
                          <ns2:TypeCode>Cancellation</ns2:TypeCode>
                        </ns2:Penalty>
                      </ns2:FareRule>
                      <ns2:PaxSegmentRefID>SEG3</ns2:PaxSegmentRefID>
                      <ns2:PaxSegmentRefID>SEG2</ns2:PaxSegmentRefID>
                    </ns2:FareComponent>
                    <ns2:FarePriceType>
                      <ns2:FarePriceTypeCode>70J</ns2:FarePriceTypeCode>
                      <ns2:Price>
                        <ns2:BaseAmount CurCode="EUR">311.00</ns2:BaseAmount>
                        <ns2:TaxSummary>
                          <ns2:TotalTaxAmount CurCode="EUR">61.29</ns2:TotalTaxAmount>
                        </ns2:TaxSummary>
                        <ns2:TotalAmount CurCode="EUR">372.29</ns2:TotalAmount>
                      </ns2:Price>
                    </ns2:FarePriceType>
                    <ns2:PaxRefID>PAX1</ns2:PaxRefID>
                  </ns2:FareDetail>
                  <ns2:OfferItemID>b4f40cc5-7346-4e17-b40c-c57346ce17af</ns2:OfferItemID>
                  <ns2:Price>
                    <ns2:BaseAmount CurCode="EUR">311.00</ns2:BaseAmount>
                    <ns2:TaxSummary>
                      <ns2:TotalTaxAmount CurCode="EUR">61.29</ns2:TotalTaxAmount>
                    </ns2:TaxSummary>
                    <ns2:TotalAmount CurCode="EUR">372.29</ns2:TotalAmount>
                  </ns2:Price>
                  <ns2:Service>
                    <ns2:PaxRefID>PAX1</ns2:PaxRefID>
                    <ns2:ServiceAssociations>
                      <ns2:PaxJourneyRefID>PJ2</ns2:PaxJourneyRefID>
                    </ns2:ServiceAssociations>
                    <ns2:ServiceID>SV5</ns2:ServiceID>
                  </ns2:Service>
                  <ns2:Service>
                    <ns2:PaxRefID>PAX1</ns2:PaxRefID>
                    <ns2:ServiceAssociations>
                      <ns2:ServiceDefinitionRef>
                        <ns2:PaxSegmentRefID>SEG3</ns2:PaxSegmentRefID>
                        <ns2:PaxSegmentRefID>SEG2</ns2:PaxSegmentRefID>
                        <ns2:ServiceDefinitionRefID>SRV-SEAT</ns2:ServiceDefinitionRefID>
                      </ns2:ServiceDefinitionRef>
                    </ns2:ServiceAssociations>
                    <ns2:ServiceID>SRVID5_SI</ns2:ServiceID>
                  </ns2:Service>
                </ns2:OfferItem>
                <ns2:OwnerCode>AF</ns2:OwnerCode>
                <ns2:TotalPrice>
                  <ns2:BaseAmount CurCode="EUR">311.00</ns2:BaseAmount>
                  <ns2:TaxSummary>
                    <ns2:TotalTaxAmount CurCode="EUR">61.29</ns2:TotalTaxAmount>
                  </ns2:TaxSummary>
                  <ns2:TotalAmount CurCode="EUR">372.29</ns2:TotalAmount>
                </ns2:TotalPrice>
              </ns2:Offer>
            </ns2:CarrierOffers>
          </ns2:OffersGroup>
        </ns2:Response>
        <ns2:PayloadAttributes>
          <ns2:CorrelationID>5</ns2:CorrelationID>
          <ns2:VersionNumber>18.2</ns2:VersionNumber>
        </ns2:PayloadAttributes>
      </ns2:IATA_AirShoppingRS>
    </S:Body>
    </S:Envelope>
    """
  end
end
