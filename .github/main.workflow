workflow "Build, Test" {
  resolves = ["Test"]
  on = "pull_request"
}

action "Build" {
  uses = "actions/npm@master"
  args = "install"
}

action "Test" {
  needs = "Build"
  uses = "actions/npm@master"
  args = "test"
}
