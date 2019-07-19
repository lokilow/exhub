defmodule Github do
  """
  Create this repository on GitHub and add GitHub as origin.
  Must be run from inside a repository

  Example: 
  Github.create_repo("github", [private: true, description: "An elixir wrapper around the Github 'hub' CLI tool", remote_name: "github"])
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
