# MoonIcons

**TODO: Add description**

## Elixir Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `moon_icons` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:moon_icons, git: "git@github.com:coingaming/moon-icons.git", branch: "main"}
  ]
end
```

Than add folowing to your enpoint.ex

```elixir
  plug Plug.Static,
    at: "/moon_icons/",
    from: :moon_icons,
    gzip: true,
    cache_control_for_etags: "public, max-age=86400"
```

 To check run your app and open http://localhost:<your_port_here>/moon_icons/icons_new/controls-chevron-up.svg

