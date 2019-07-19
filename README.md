# Github

**An elixir wrapper around the Github 'hub' CLI tool**
[docs](https://github.com/lokilow/github)


The motivation for this project was to be able to clean my my Github easily.  I had a ton
of repositories to delete, and deleting 40+ repos through the website would be super
annoying.  So, right now there is only delete functionality, but the project may grow as
I come across more automation needs with Github.

## Installation

First, [install hub](https://github.com/github/hub#installation)
Then, add Github to your mix.exs.
```elixir
def deps do
  [
    {:phoenix_live_view, github: "phoenixframework/phoenix_live_view"}
  ]
end
```


## Usage
```elixir
Github.delete_repo("my_repo")
Github.delete_repos(["old_repo_1", "old_repo_2"])
```
