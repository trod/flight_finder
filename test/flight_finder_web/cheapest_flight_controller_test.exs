defmodule FlightFinderWeb.FindCheapestOfferControllerTest do
  use FlightFinderWeb.ConnCase
  alias FlightFinder.HTTP
  alias FlightFinder.Fixtures.KLM, as: KLMFixture

  import Mock

  describe "GET /findCheapestOffer" do
    test "returns 400 if the query parameters do not conform to the specification",
         %{conn: conn} do
      conn =
        conn
        |> put_req_header("content-type", "application/json")
        |> get("/findCheapestOffer",
          origin: "earth",
          destination: "moon"
        )

      assert json_response(conn, 400) == %{"errors" => ["Missing required params"]}
    end

    test "returns 200 if the query parameters conform to the specification but no offer found",
         %{conn: conn} do
      conn =
        conn
        |> put_req_header("content-type", "application/json")
        |> get("/findCheapestOffer",
          origin: "earth",
          destination: "moon",
          departureDate: "2021-09-26"
        )

      assert json_response(conn, 200) == %{"errors" => ["Offer not found"]}
    end

    test "returns 200 and the cheapest offer if the query parameters conform to the specification",
         %{conn: conn} do
      with_mocks([
        {HTTP, [],
         [
           post: fn "test_api_url", _body, _headers ->
             KLMFixture.flights()
           end
         ]}
      ]) do
        conn =
          conn
          |> put_req_header("content-type", "application/json")
          |> get("/findCheapestOffer",
            origin: "earth",
            destination: "moon",
            departureDate: "2021-09-26"
          )

        assert json_response(conn, 200) == %{
                 "cheapestOffer" => %{"airline" => "KLM", "amount" => "199.29"}
               }
      end
    end
  end
end
