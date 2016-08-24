defmodule Nexmo.Mixfile do
  use Mix.Project

  def project do
    [app: :nexmo,
     version: "0.2.0",
     description: description(),
     elixir: "~> 1.3",
     deps: deps(),
     package: package()]
  end

  def application do
    [applications: [:logger, :httpotion]]
  end

  defp description do
    """
    [Work in Progress] Nexmo REST API client for Elixir"
    """
  end

  defp deps do
    [
      {:httpotion, "~> 3.0.0"},
      {:poison, "~> 2.0"},
      { :ex_doc, "> 0.0.0", only: :dev }
    ]
  end

  defp package do
    [
      name: :nexmo,
      licenses: ["MIT"],
      maintainers: ["Cristiano Betta"],
      links: %{"GitHub" => "https://github.com/cbetta/nexmo-elixir"}
    ]
  end
end
