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

## Build release

Add `{:distillery, "~> 1.5.2", runtime: false}` to `mix.exs` and run

    mix deps.get
    mix release.init
    MIX_ENV=prod mix release --env=prod

Run your release build:

    PORT=8001 _build/prod/rel/quickstart/bin/quickstart foreground

## Build for production environment

Build production release inside container

    docker run --mount type=bind,source=`pwd`,target=/src \
      -e "MIX_ENV=prod" centos-7-elixir mix release --env=prod
    scp _build/prod/rel/quickstart/releases/0.0.1/quickstart.tar.gz my-server:~/custom-apps

Run your release build inside the container:

    docker run -p 8001:8001 \
      --mount type=bind,source=`pwd`,target=/src \
      -e "PORT=8001" centos-7-elixir \
      _build/prod/rel/quickstart/bin/quickstart foreground

Sources: https://hexdocs.pm/distillery/walkthrough.html, https://hexdocs.pm/distillery/use-with-phoenix.html
