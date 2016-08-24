defmodule Nexmo.Message do
  def send(from, to, text) do
    params = [
      from: from,
      to: to,
      text: text
    ]
    Nexmo.request(:get, "sms/json", params)
  end
end
