searchNodes=[{"ref":"Github.html","title":"Github","type":"module","doc":"Github is an elixir wrapper around the Github &#39;hub&#39; CLI tool. Right now you can use it to create repositories on Github from a local repository, and delete remote repositories."},{"ref":"Github.html#create_repo/2","title":"Github.create_repo/2","type":"function","doc":"Creates a repository on Github. Must be run from inside a git repository. repo_name can be just a name or organization/name opts include :private :: bool() the repository will be private on Github :description :: string() The Github project description :remote_name :: string() Sets the name of the remote branch in .git/config Example Github.create_repo(&quot;github&quot;, [ private: true, description: &quot;An elixir wrapper around the Github &#39;hub&#39; CLI tool&quot;, remote_name: &quot;github&quot; ])"},{"ref":"Github.html#delete_repo/1","title":"Github.delete_repo/1","type":"function","doc":"Deletes a repository on Github. repo_name can be just a name or organization/name Example delete_repo(&quot;old_repo&quot;)"},{"ref":"Github.html#delete_repos/1","title":"Github.delete_repos/1","type":"function","doc":"Deletes multiple repositories on Github. each repo_name can be just a name or organization/name Example delete_repos([&quot;old_repo_1&quot;, &quot;myorg/old_repo_2&quot;])"},{"ref":"readme.html","title":"Github","type":"extras","doc":"Github An elixir wrapper around the Github &#39;hub&#39; CLI tool The motivation for this project was to be able to clean my my Github easily. I had a ton of repositories to delete, and deleting 40+ repos through the website would be super annoying. So, right now there is only delete functionality, but the project may grow as I come across more automation needs with Github."},{"ref":"readme.html#installation","title":"Github - Installation","type":"extras","doc":"First, install hub Then, add Github to your mix.exs. def deps do [ {:phoenix_live_view, github: &quot;phoenixframework/phoenix_live_view&quot;} ] end"},{"ref":"readme.html#usage","title":"Github - Usage","type":"extras","doc":"Github.delete_repo(&quot;my_repo&quot;) Github.delete_repos([&quot;old_repo_1&quot;, &quot;old_repo_2&quot;])"}]