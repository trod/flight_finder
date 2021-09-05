defmodule FlightFinder.HTTP do
  @moduledoc false

  def post(url, data, headers) do
    {:ok, %HTTPoison.Response{body: body}} = HTTPoison.post(url, data, headers)

    body
  end
end
