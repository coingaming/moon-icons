defmodule Moon.Assets.CountryFlags.FlagMO do
  @moduledoc false

  use MoonIcons.StatelessComponent

  prop(color, :string, values: colors())
  prop(background_color, :string, values: colors())
  prop(font_size, :string)
  prop(click, :event)
  prop(class, :string)

  def render(assigns) do
    ~F"""
    <img
      class={"moon-country-flag", @class, "cursor-pointer": @click}
      :on-click={@click}
      style={get_style(color: @color, background_color: @background_color, font_size: @font_size)}
      src="/moon_icons/svgs/country_flags/MO.svg"
    />
    """
  end
end
