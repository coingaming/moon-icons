defmodule Moon.Icons.TravelBus do
  @moduledoc false
  use MoonIcons.StatelessComponent

  prop(click, :event)
  prop(class, :css_class)

  # All the other props below are deprecated!
  # Please use only tailwind classes and the class prop
  prop(font_size, :string)
  prop(color, :string, values: colors())
  prop(background_color, :string, values: colors())

  def render(assigns) do
    ~F"""
    <svg
      class={
        "moon-icon fill-none",
        @class,
        "text-#{@color}": @color,
        "bg-#{@background_color}": @background_color,
        "text-#{@font_size}": @font_size,
        "cursor-pointer": @click
      }
      :on-click={@click}
      style={get_style(color: @color, background_color: @background_color, font_size: @font_size)}
    >
      <use href="/moon_icons/svgs/icons_new/travel-bus.svg#item" />
    </svg>
    """
  end
end
