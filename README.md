# PhoenixStarter

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/codegram/phoenix_starter)

[![CI](https://github.com/codegram/phoenix_starter/actions/workflows/ci.yml/badge.svg)](https://github.com/codegram/phoenix_starter/actions/workflows/ci.yml) [![Docs](https://github.com/codegram/phoenix_starter/actions/workflows/docs.yml/badge.svg)](https://codegram.github.io/phoenix_starter)

## Setting up your development environment

There's three ways to set up your development environment - it's up to you to choose!

### Using GitHub Codespaces for Cloud Development (recommended)

If you have access to GitHub Codespaces (currently in beta), you can start this project by clicking on "Code" (on GitHub's Interface) -> Open with Codespaces.

This will boot up a development environment on the cloud using Visual Studio Code including all service dependencies (databases & queues). It will also take care of installing dependencies and migrating the database.

After the environment boots, you can just:

```bash
$ mix phx.server
```

You'll now have a Phoenix server available at `https://localhost:4000`!

### Using Visual Code Remote Containers for Local Development

Similar to Codespaces, you can also boot this repository using [Visual Code Remote Containers](https://code.visualstudio.com/docs/remote/containers-tutorial), which is a neat way of booting an entire development environment (including databases and dependencies) using Docker, with the help of Visual Code.

In order to do so, you will need to:

- Install [Visual Studio Code](https://code.visualstudio.com/Download)
- Install [Docker Desktop](https://www.docker.com/products/docker-desktop)
- Install the [Remote Containers Extension](vscode:extension/ms-vscode-remote.remote-containers)

After booting Visual Studio, you'll need to open the Command Palette (Shift+Cmd+P) and select "Clone Repository on Container Volume". You should be taken through a process that will end with a full-fledged development environment just as Codespaces.

### Standard Local Development Environment

As PhoenixStarter is just a standard Elixir/Phoenix application, you can of course boot it using a local Elixir version installed in your machine.

In order to do so, you'll need to:

- [Install Elixir in your machine](https://elixir-lang.org/install.html)
- Install PostgreSQL 13 ([Mac](https://postgresapp.com/) / [Windows](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads))
- [Install NodeJS 15](https://nodejs.org/en/download/)
- Clone the repository locally and copy:
  - `config/dev.local.exs.example` to `config/dev.local.exs`
  - `config/test.local.exs.example` to `config/test.local.exs`

Once that's done, you should be able to download and set up the project by changing into the project's folder and executing the following command:

```
$ mix setup
```

This will download Elixir and Node dependencies, compile them, execute database migrations and seeds.

## Starting your server

Assuming you've got PhoenixStarter running in either of the three ways described earlier, you should now be able to start your Phoenix server by executing the following command:

```
$ mix run priv/repo/dev_seeds.exs
$ mix phx.server
```

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Learn more

- Official website: https://www.phoenixframework.org/
- Guides: https://hexdocs.pm/phoenix/overview.html
- Docs: https://hexdocs.pm/phoenix
- Forum: https://elixirforum.com/c/phoenix-forum
- Source: https://github.com/phoenixframework/phoenix
