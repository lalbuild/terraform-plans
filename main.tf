provider "github" {
  token = "${var.github_token}"
  organization = "lalbuild"
}

# repositories

resource "github_repository" "dockerfiles" {
  name = "dockerfiles"
  has_issues = true
  description = "Demo environments for lal"
}

resource "github_repository" "lal" {
  name = "lal"
  has_issues = true
  has_downloads = true
  has_wiki = true
  description = "A strict, language-agnostic build system and dependency manager"
}

resource "github_repository" "lal-build_xyz" {
  name = "lal-build.xyz"
  description = "Documentation page"
  homepage_url = "https://lal-build.xyz"
}

resource "github_repository" "terraform-plans" {
  name = "terraform-plans"
  description = "Infrastructure configs"
}

# branch protection

resource "github_branch_protection" "dockerfiles_master" {
  repository = "dockerfiles"
  branch = "master"
  enforce_admins = "true"
}

resource "github_branch_protection" "lal_master" {
  repository = "lal"
  branch = "master"
  enforce_admins = "true"
}


resource "github_branch_protection" "terraform-plans_master" {
  repository = "terraform-plans"
  branch = "master"
  enforce_admins = "true"
}

# members

resource "github_membership" "membership_bencord0" {
  username = "bencord0"
  role = "member"
}

# webhooks

#resource "github_repository_webhook" "lal-build_xyz-heroku" {
#  repository = "lal-build.xyz"
#
#  name = "web"
#
#  configuration {
#    url          = "https://kolkrabbi.heroku.com/hooks/github"
#    content_type = "json"
#    insecure_ssl = false
#    #secret = "" can't retrieve this..
#  }
#
#  active = true
#
#  events = ["*"]
#}
