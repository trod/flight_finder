defmodule FlightFinder.Clients.Client do
  @callback fetch_prices(term) :: {:ok, list()} | {:error, atom}
  @callback code() :: :atom

  defmacro __using__(_opts) do
    quote do
      @behaviour unquote(__MODULE__)
      alias FlightFinder.HTTP

      def fetch_prices(request) do
        prices =
          request
          |> fetch_flights_payload()
          |> parse_flight_prices()

        {:ok, prices}
      end

      defp api_key do
        Application.get_env(:flight_finder, __MODULE__) |> Keyword.fetch!(:key)
      end

      defp url do
        Application.get_env(:flight_finder, __MODULE__) |> Keyword.fetch!(:url)
      end

      defp fetch_flights_payload(params) do
        HTTP.post(
          url(),
          prepare_body(params.origin, params.destination, params.departure_date),
          headers()
        )
      end

      defp convert_price(price) when is_list(price) do
        try do
          price
          |> String.Chars.to_string()
          |> Decimal.new()
        rescue
          _e in Decimal.Error -> :error
        end
      end

      defp convert_price(_price), do: :error

      defp parse_flight_prices(result) do
        case parse_xml_response(result) do
          %{prices: price_list} ->
            price_list
            |> Enum.map(&convert_price(&1))
            |> Enum.reject(&(&1 == :error))
            |> Enum.map(fn price -> {__MODULE__.code(), price} end)

          _ ->
            []
        end
      end
    end
  end
end
