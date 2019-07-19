defmodule Github do
  @moduledoc ~S"""
  Github is an elixir wrapper around the Github 'hub' CLI tool.
  Right now you can use it to create repositories on Github 
  from a local repository, and delete remote repositories.
  """

  @doc """
  Creates a repository on Github.  Must be run from inside a git repository.

  `repo_name` can be just a `name` or `organization/name`

  `opts` include 

  * :private :: bool() the repository will be private on Github
  * :description :: string() The Github project description
  * :remote_name  :: string() Sets the name of the remote branch in .git/config

  ## Example

      Github.create_repo("github", [
      private: true, 
      description: "An elixir wrapper around the Github 'hub' CLI tool",
      remote_name: "github"
      ])

  """
  def create_repo(repo_name, opts \\ []) when is_binary(repo_name) do
    private =
      case opts[:private] do
        true -> ["-p"]
        _ -> []
      end

    description =
      case opts[:description] do
        desc when is_binary(desc) -> ["-d", desc]
        _ -> []
      end

    remote_name =
      case opts[:remote_name] do
        name when is_binary(name) -> ["--remote-name", name]
        _ -> []
      end

    args = Enum.concat([["create"], private, description, remote_name, [repo_name]])
    IO.inspect(args)
    System.cmd("hub", args, into: IO.stream(:stdio, :line))
  end

  def delete_repo_from_file(file) do
    File.stream!(file)
    |> Enum.each(fn line ->
      trimmed = String.trim(line)
      System.cmd("hub", ["delete", "-y", trimmed], into: IO.stream(:stdio, :line))
    end)
  end

  def delete_repo(name) do
    System.cmd("hub", ["delete", "-y", name], into: IO.stream(:stdio, :line))
  end

  def delete_repos(repos) do
    repos
    |> Enum.each(&delete_repo(&1))
  end
end
