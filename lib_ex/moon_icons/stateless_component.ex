defmodule MoonIcons.StatelessComponent do
  @moduledoc false

  defmacro __using__(_opts) do
    quote do
      use Surface.Component
      import MoonIcons
    end
  end
end
