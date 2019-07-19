# Exhub

**An elixir wrapper around the Github 'hub' CLI tool**


The motivation for this project was to be able to clean my my Github easily, 
and to do it using Elixir.  Deleting 40+ repos through the Github website
would be too painful, I wanted to be able to write some Elixir instead.
Right now Exhub only supports repository creation and deletion, but the
project may grow as I come across more automation needs.
It is also possible I switch to a Github API wrapper such as
[tentacat](https://github.com/edgurgel/tentacat)

## Installation

### Hub Setup
First, [install hub](https://github.com/github/hub#installation)

In order to authenticate for the first time, you will need to run some command
from the command line.  For example, `hub delete hello_world`.  You should be prompted
for your username and password, and you shouldn;t be prompted after this if you have ssh
setup.

Next, [update your personal access token](https://github.com/settings/tokens)
to give yourself access to delete repositories.

### Elixir Setup
Then, add exhub as a dependency to your project.
```elixir
def deps do
  [
    {:exhub, "~> 0.1.0"}
  ]
end
```


## Usage
```elixir
Exhub.create_repo("my_repo")

Exhub.delete_repo("my_repo")

Exhub.delete_repos(["old_repo_1", "old_repo_2"])
```
