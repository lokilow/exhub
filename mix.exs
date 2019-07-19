defmodule Exhub.MixProject do
  use Mix.Project

  @version "0.1.0"

  def project do
    [
      app: :exhub,
      version: @version,
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      name: "Exhub",
      docs: docs(),
      source_url: "https://gitlab.com/lokilow/gitlab",
      description: """
      An elixir wrapper around the Github hub cli tool
      """
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.21", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{
        github: "https://github.com/lokilow/exhub",
        gitlab: "https://gitlab.com/lokilow/exhub",
        hub: "https://hub.github.com/"
      }
    ]
  end

  defp docs do
    [
      main: "Exhub",
      extras: ["README.md"]
    ]
  end
end
