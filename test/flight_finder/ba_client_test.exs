defmodule FlightFinderTest.BA_ClientTest do
  use ExUnit.Case

  alias FlightFinder.HTTP
  alias FlightFinder.Clients.BA
  alias FlightFinder.Fixtures.BA, as: BAFixture

  import Mock

  describe "#fetch_flights/1" do
    setup do
      headers = [
        {"api_key", "test_api_key"},
        {"content_type", "application/xml"},
        {"SOAPAction", "AirShoppingV01"}
      ]

      body = BAFixture.request_body()

      %{headers: headers, body: body}
    end

    test "get a list of ba flights", %{headers: _headers, body: _body} do
      with_mocks([
        {HTTP, [],
         [
           post: fn "test_api_url", _body, _headers ->
             BAFixture.flights()
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
                  {:BA, Decimal.new("77.14")},
                  {:BA, Decimal.new("86.14")},
                  {:BA, Decimal.new("87.14")},
                  {:BA, Decimal.new("97.14")},
                  {:BA, Decimal.new("106.14")},
                  {:BA, Decimal.new("107.14")},
                  {:BA, Decimal.new("163.14")},
                  {:BA, Decimal.new("183.14")},
                  {:BA, Decimal.new("219.14")},
                  {:BA, Decimal.new("234.14")},
                  {:BA, Decimal.new("240.14")},
                  {:BA, Decimal.new("247.05")},
                  {:BA, Decimal.new("256.7")},
                  {:BA, Decimal.new("259.05")},
                  {:BA, Decimal.new("262.14")},
                  {:BA, Decimal.new("283.05")},
                  {:BA, Decimal.new("283.05")},
                  {:BA, Decimal.new("288.14")},
                  {:BA, Decimal.new("288.14")},
                  {:BA, Decimal.new("288.7")},
                  {:BA, Decimal.new("288.7")},
                  {:BA, Decimal.new("288.7")},
                  {:BA, Decimal.new("288.7")},
                  {:BA, Decimal.new("299.05")},
                  {:BA, Decimal.new("299.05")},
                  {:BA, Decimal.new("379.14")},
                  {:BA, Decimal.new("627.05")},
                  {:BA, Decimal.new("665.97")}
                ]} ==
                 BA.fetch_prices(request)
      end
    end

    test "empty list of ba flights on invalid xml", %{headers: _headers, body: _body} do
      with_mocks([
        {HTTP, [], [post: fn "test_api_url", _body, _headers -> "" end]}
      ]) do
        request =
          FlightFinder.Request.from_map(%{
            origin: "MUC",
            destination: "LHR",
            departure_date: "2021-09-26"
          })

        assert {:ok, []} ==
                 BA.fetch_prices(request)
      end
    end
  end
end
