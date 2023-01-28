defmodule MoonIcons.MixProject do
  use Mix.Project

  @version (case File.read("VERSION") do
              {:ok, version} -> String.trim(version)
              {:error, _} -> "0.0.0-development"
            end)

  def project do
    [
      app: :moon_icons,
      description: "Icons used in Moon Design system - both aka-components and svg files",
      version: @version,
      elixir: "~> 1.14",
      package: package(),
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      # extra_applications: [:logger]
    ]
  end

  defp package do
    [
      name: "moon_icons",
      licenses: ["MIT"],
      files: ["lib_ex", "priv", "mix.exs", "README.md", "VERSION"],
      links: %{
        "GitHub" => "https://github.com/coingaming/moon-icons"
      }
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:surface, "~> 0.9.1"},
      {:surface_formatter, "~> 0.7.0", only: [:dev, :test], runtime: false},
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp elixirc_paths(_), do: ["lib_ex"]
end
