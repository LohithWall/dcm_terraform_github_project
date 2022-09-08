terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
    }
  }

  backend "remote" {
    organization = "DeliverainTechnology"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "snowflake" {
  username = "lohith"
  password = "P@ssw0rdSnowflake"
  account  = "QW66955"
  region   = "ap-south-1.aws"
}

resource "snowflake_database" "demo_db" {
  name    = "DEMO_DB"
  comment = "Database for Snowflake Terraform demo"
}