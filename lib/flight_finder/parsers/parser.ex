defmodule FlightFinder.Parsers.Parser do
  @callback price_parser(term) :: %{prices: list()} | {:error, atom}

  defmacro __using__(_opts) do
    quote do
      @behaviour unquote(__MODULE__)
      import SweetXml
    end
  end
end
