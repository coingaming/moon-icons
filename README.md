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

## Importing icons from moom-react
```bash
  rm priv/static/svgs/icons_new/*.svg
  cp ../moon-design/workspaces/icons/raw/imported/*.svg priv/static/svgs/icons_new/
  cd priv/static/svgs/icons_new/
  # linux
  # for file in ./* ; do mv "$file" "$(echo $file|sed -e 's/\([A-Z]\)/_\L\1/g' -e 's/^.\/_//')" ; done
  # macos
  for file in ./*.svg ; do mv "$file" "$(echo $file | sed 's/[[:upper:]]/-&/g;s/^-//' | tr '[:upper:]' '[:lower:]' | sed -e 's/^.\/-//')" ; done
  cd -
  rm lib_ex/moon/icons/*.ex
  ts-node bin/icons-importer.ts # please note should be runned in two modes
```

`ts-node bin/icons-importer.ts`