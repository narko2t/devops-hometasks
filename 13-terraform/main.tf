resource "github_repository" "download" {
  name        = "main"
  description = "terraform from github"
  visibility = "public"
  auto_init = true

  #template {
  #  owner                = "github"
  #  repository           = "terraform-template-module"
  #  include_all_branches = true
  #}
}