# Nexmo

Nexmo REST API client for Elixir.

**Warning:** This is still very much a work in progress.

## Installation

The package can be installed as:

  1. Add `nexmo` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:nexmo, "~> 0.1.0"}]
    end
    ```

  2. Ensure `nexmo` is started before your application:

    ```elixir
    def application do
      [applications: [:nexmo]]
    end
    ```

## Usage

### Account Balance

```elixir
iex(1)> Nexmo.Account.balance
[autoReload: false, value: 15.1874]
```

## License

This library is released under the [MIT License](LICENSE).
