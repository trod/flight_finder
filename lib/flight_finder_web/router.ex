defmodule FlightFinderWeb.Router do
  use FlightFinderWeb, :router
  alias FlightFinderWeb.FindCheapestOfferController

  pipeline :api do
    plug(:accepts, ["html"])
  end

  scope "/" do
    pipe_through(:api)

    get("/findCheapestOffer", FindCheapestOfferController, :index)
  end
end
