# Feihong's Elixir Quickstart

## Prerequisites

    brew install elixir
    mix local.hex
    mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez

If upgrading, you should run

    brew upgrade erlang
    brew upgrade elixir
    mix local.hex
    mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez

Source: https://hexdocs.pm/phoenix/installation.html

## Create new Phoenix project

     mix phx.new quickstart --no-brunch --no-ecto

Run `mix phx.new` to see all the options.

## Basic operations

Run server

    mix phx.server

Fetch dependencies

    mix deps.get

Run REPL with project dependencies loaded

    iex -S mix

Run a script

    mix run parse_json.exs

## Deployment

Add `{:distillery, "~> 1.5.2", runtime: false}` to `mix.exs`

    mix deps.get
    mix release.init
    mix release

Sources: https://hexdocs.pm/distillery/walkthrough.html
