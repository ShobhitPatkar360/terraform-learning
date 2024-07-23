# Here Resource type is github_repository
# Here Name of resource ( used in terraform internal environment) is my_repo


resource "github_repository" "my_repo" {
  name        = var.repo_name        # For setting the name of repository
  description = var.repo_description # For setting the description of repo
  visibility     = var.repo-visibility     # For deciding whether your repo should be public or private

}
