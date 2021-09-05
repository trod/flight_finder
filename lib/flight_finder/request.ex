defmodule FlightFinder.Request do
  @enforce_keys [:origin, :destination, :departure_date]
  defstruct [:origin, :destination, :departure_date]

  def from_map(%{origin: origin, destination: destination, departure_date: departure_date}) do
    # TODO: add params validation, maybe use Ecto.Schema

    %__MODULE__{origin: origin, destination: destination, departure_date: departure_date}
  end
end
