defmodule Shrg.Mixfile do
  use Mix.Project

  def project do
    [app: :shrg,
     version: "0.0.1",
     elixir: "~> 1.0",
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [
      applications: [
        :cowboy,
        :httpoison,
        :logger,
        :poison,
        :plug
      ]
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:cowboy,     "~> 1.0"},
      {:httpoison,  "~> 0.5"},
      {:plug,       "~> 0.8"},
      {:poison,     "~> 1.2"},
      {:timex,      "~> 0.13"}
    ]
  end
end
