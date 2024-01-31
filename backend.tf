terraform {
  cloud {
    organization = "Panurge"

    workspaces {
      name = "fem-eci-tfe"
    }
  }
}