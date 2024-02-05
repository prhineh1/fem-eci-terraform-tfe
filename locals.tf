locals {
    project = {
        "fem-eci-project" = {
            description = "Example description of project"
        }
    }
    workspace = {
        "fem-eci-tfe" = {
            description = "Example description of works"
            project_id = module.project["fem-eci-project"].id
            vcs_repo_identifier = "prhineh1/fem-eci-terraform-tfe"
            execution_mode = "remote"
        }
    }
}