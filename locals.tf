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
            vcs_repo_identifier = "${var.github_organization_name}/fem-eci-terraform-tfe"
            execution_mode = "remote"
        }

        "fem-eci-github" = {
            description = "Example automation workspace"
            execution_mode = "local"
            project_id = module.project["fem-eci-project"].id
            vcs_repo_identifier = "${var.github_organization_name}/fem-eci-terraform-github"
        }
    }
}