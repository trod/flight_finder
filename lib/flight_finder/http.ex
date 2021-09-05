defmodule FlightFinder.HTTP do
  @moduledoc false

  def post(url, data, headers) do
    HTTPoison.post(url, data, headers)
  end
end
