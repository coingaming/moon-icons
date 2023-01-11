defmodule MoonIcons do
  @moduledoc """
  Some helper functions
  """

  @colors [
    "krillin-10",
    "krillin-60",
    "krillin",
    "chichi-10",
    "chichi-60",
    "chichi",
    "roshi-10",
    "roshi-60",
    "roshi",
    "dodoria-10",
    "dodoria-60",
    "dodoria",
    "cell-10",
    "cell-60",
    "cell",
    "raditz-10",
    "raditz-60",
    "raditz",
    "whis-10",
    "whis-60",
    "whis",
    "frieza-10",
    "frieza-60",
    "frieza",
    "nappa-10",
    "nappa-60",
    "nappa",
    "piccolo",
    "hit-80",
    "hit",
    "hit-120",
    "beerus",
    "goku-10",
    "goku-40",
    "goku-80",
    "goku",
    "gohan-10",
    "gohan-40",
    "gohan-80",
    "gohan",
    "bulma",
    "trunks",
    "goten",
    "popo"
  ]

  def get_style(string_style, props) do
    props_style = get_style(props)

    if string_style do
      if props_style do
        string_style <> props_style
      else
        string_style
      end
    else
      props_style
    end
  end

  def get_style(props) do
    props
    |> Enum.map(fn {x, y} ->
      x = String.replace("#{x}", "_", "-")

      cond do
        String.contains?(x, "color") && y ->
          get_style_with_color(x, y)

        x == "is-bold" && y ->
          "font-weight: var(--font-face--semibold--font-weight)"

        y ->
          "#{x}: #{y}"

        true ->
          nil
      end
    end)
    |> Enum.filter(fn x -> x end)
    |> Enum.join(";")
  end

  defp get_style_with_color(x, y) do
    if String.starts_with?(y, "#") do
      "#{x}: #{y}"
    else
      "#{x}: var(--#{y})"
    end
  end

  def asset_name_to_filename(name) do
    name
    |> to_string()
    |> String.replace("_", "-")
  end

  def colors do
    @colors
  end
end
