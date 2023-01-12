# MoonIcons

Svg-icons containing library for Moon Design System

## Elixir Installation

Add to your mix.exs

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

 To check run your app and open e.g. http://localhost:<your_port_here>/moon_icons/icons_new/controls-chevron-up.svg

For development purposes (e.g running bin/icons-importer.ts)

```
  asdf install
  npm i -g ts-node
```

Now, for icons importing (from /svg folder) 

`ts-node bin/icons-importer.ts`