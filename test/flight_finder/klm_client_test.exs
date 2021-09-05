defmodule FlightFinderTest.KLM_ClientTest do
  use ExUnit.Case

  alias FlightFinder.HTTP
  alias FlightFinder.Clients.KLM
  alias FlightFinder.Fixtures.KLM, as: KLMFixture

  import Mock

  describe "#fetch_flights/1" do
    setup do
      headers = [
        {"api_key", "test_api_key"},
        {"content_type", "text/xml"},
        {"SOAPAction",
         "\"http://www.af-klm.com/services/passenger/ProvideAirShopping/airShopping\""}
      ]

      body = KLMFixture.request_body()

      %{headers: headers, body: body}
    end

    test "get a list of klm flights", %{headers: _headers, body: _body} do
      with_mocks([
        {HTTP, [],
         [
           post: fn "test_api_url", _body, _headers ->
             KLMFixture.flights()
           end
         ]}
      ]) do
        request =
          FlightFinder.Request.from_map(%{
            origin: "MUC",
            destination: "LHR",
            departure_date: "2021-09-26"
          })

        assert {:ok,
                [
                  {:KLM, Decimal.new("199.29")},
                  {:KLM, Decimal.new("232.29")},
                  {:KLM, Decimal.new("297.29")},
                  {:KLM, Decimal.new("274.29")},
                  {:KLM, Decimal.new("307.29")},
                  {:KLM, Decimal.new("372.29")}
                ]} ==
                 KLM.fetch_prices(request)
      end
    end
  end
end
