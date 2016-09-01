defmodule Converter do
  def to_nearest_tenth(val) do
    Float.ceil(val, 1)
  end

  def to_km(velocity) do
    velocity / 1000
  end

  def to_light_seconds({:miles, miles}) do
    (miles * 5.36819e-6) |> round_down
  end

  def to_light_seconds({:meters, meters}) do
    (meters * 3.335638620368e-9) |> round_down
  end

  def seconds_to_hours(val)  when is_integer(val) or is_float(val) do
   val / 3600 |> to_nearest_tenth
 end

   def to_meters(val) when is_integer(val) or is_float(val) do
      val * 1000
  end


  def round_down(val) when is_float(val), do: trunc(val)

  def to_nearest_tenth(val) when is_integer(val) or is_float(val) do
    round_to(val, 1)
  end

  defp round_to(val, precision) when is_float(val) do
    Float.round(val, precision)
  end
end
