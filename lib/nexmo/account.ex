defmodule Nexmo.Account do
  def balance do
    Nexmo.request(:get, "/account/get-balance", query: [foo: "bar"]).body
  end
end
