defmodule FlightFinder.CheapestFlightTest do
  use ExUnit.Case

  alias FlightFinder.Clients.{BA, KLM}
  alias FlightFinder.CheapestFlight
  import Mock

  describe "#find/1" do
    test "get a list of klm flights" do
      with_mocks([
        {BA, [],
         [
           fetch_prices: fn %FlightFinder.Request{
                              origin: "MUC",
                              destination: "LHR",
                              departure_date: "2021-09-26"
                            } ->
             {:ok, [10.0, 15.0, 20.0]}
           end
         ]},
        {KLM, [],
         [
           fetch_prices: fn %FlightFinder.Request{
                              origin: "MUC",
                              destination: "LHR",
                              departure_date: "2021-09-26"
                            } ->
             {:ok, [15.0, 3.0, 200.0]}
           end
         ]}
      ]) do
        request =
          FlightFinder.Request.from_map(%{
            origin: "MUC",
            destination: "LHR",
            departure_date: "2021-09-26"
          })

        assert 3.0 == CheapestFlight.find(request)
      end
    end
  end
end
