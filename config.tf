terraform {
  cloud {
    hostname     = "app.terraform.io"
    organization = "x"
    workspaces {
      name = "x"
    }
  }

  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = ">= 0.42.1"
    }
  }
}

provider "snowflake" {
  username = "x"
  account  = "x"
  region   = "x"
  role     = "x"
}
