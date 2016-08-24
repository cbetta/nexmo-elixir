defmodule Nexmo.Mixfile do
  use Mix.Project

  def project do
    [app: :nexmo,
     version: "0.2.0",
     description: description(),
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
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
      licenses: ["MIT"]
    ]
  end
end
