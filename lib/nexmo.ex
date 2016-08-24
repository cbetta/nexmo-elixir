defmodule Nexmo do

  use Application
  use HTTPotion.Base

  def start(_type, _args) do
    # not sure why this is needed
  end

  def api_key do
    Application.get_env(:ex_nexmo, :key) ||
      System.get_env("NEXMO_API_KEY")
  end

  def api_secret do
    Application.get_env(:ex_nexmo, :secret) ||
      System.get_env("NEXMO_API_SECRET")
  end

  def process_url(path) do
    "https://rest.nexmo.com" <> path
  end

  def process_options options do
    query = Keyword.merge(options[:query], [api_key: api_key, api_secret: api_secret])
    Keyword.merge(options, [query: query])
  end

  def process_response_body(body) do
    body
    |> Poison.decode!
    |> Enum.map(fn({k, v}) -> {String.to_atom(k), v} end)
  end
end
