resource "snowflake_database" "archive_database"{
  name = "x"
}

resource "snowflake_schema" "archive_schema"{
  database = snowflake_database.archive_database.name
  name = "x"
  data_retention_days = 7
}


