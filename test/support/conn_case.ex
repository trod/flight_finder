defmodule FlightFinder.ConnCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      # Import conveniences for testing with connections
      use Phoenix.ConnTest
      alias FlightFinderWeb.Router.Helpers, as: Routes

      # The default endpoint for testing
      @endpoint FlightFindertWeb.Endpoint

      @test_headers [
        {"api_key", "test_api_key"},
        {"content_type", "text/xml"},
        {"SOAPAction",
         "\"http://www.af-klm.com/services/passenger/ProvideAirShopping/airShopping\""}
      ]
    end
  end

  setup _tags do
    {:ok, conn: Phoenix.ConnTest.build_conn()}
  end
end
