defmodule FlightFinder.HTTP do
  @moduledoc false

  def post(url, data, headers) do
    case HTTPoison.post(url, data, headers) do
      {:ok, %HTTPoison.Response{body: body}} -> body
      _ -> ""
    end
  end
end
