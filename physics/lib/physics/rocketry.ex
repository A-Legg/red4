defmodule Physics.Rocketry do
  import Converter
  import Calcs
  import Physics.Laws
  import Planets

  def escape_velocity(:earth) do earth |> escape_velocity end
  def escape_velocity(:moon) do moon |> escape_velocity end
  def escape_velocity(:mars) do mars |> escape_velocity end

  def escape_velocity(planet) when is_map(planet) do
    planet
      |> calculate_escape
      |> Converter.to_km
      |> Converter.to_nearest_tenth
  end

  defp calculate_escape(%{mass: mass, radius: radius}) do
    2 * newtons_constant * mass / radius
      |> :math.sqrt
  end

end
