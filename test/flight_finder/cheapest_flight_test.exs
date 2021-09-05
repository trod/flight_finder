defmodule FlightFinder.CheapestFlightTest do
  use ExUnit.Case

  alias FlightFinder.Clients.{BA, KLM}
  alias FlightFinder.CheapestFlight
  import Mock

  @request %FlightFinder.Request{
    origin: "MUC",
    destination: "LHR",
    departure_date: "2021-09-26"
  }

  describe "#find/1" do
    test "get a list of klm flights" do
      with_mocks([
        {BA, [],
         [
           fetch_prices: fn @request ->
             {:ok,
              [{:BA, Decimal.new("10.0")}, {:BA, Decimal.new("15.0")}, {:BA, Decimal.new("20.0")}]}
           end
         ]},
        {KLM, [],
         [
           fetch_prices: fn @request ->
             {:ok,
              [
                {:KLM, Decimal.new("20.0")},
                {:KLM, Decimal.new("3.0")},
                {:KLM, Decimal.new("200.0")}
              ]}
           end
         ]}
      ]) do
        assert {:ok, {:KLM, Decimal.new("3.0")}} == CheapestFlight.find(@request)
      end
    end
  end
end
