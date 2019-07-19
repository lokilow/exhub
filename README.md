# Exhub

**An elixir wrapper around the Github 'hub' CLI tool**


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
    {:exhub, github: "lokilow/exhub"}
  ]
end
```


## Usage
```elixir
Exhub.delete_repo("my_repo")
Exhub.delete_repos(["old_repo_1", "old_repo_2"])
```
