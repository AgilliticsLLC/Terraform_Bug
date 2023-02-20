resource "snowflake_database" "archive_database"{
  name = "ARCHIVE_DB"
}

resource "snowflake_schema" "archive_schema"{
  database = snowflake_database.archive_database.name
  name = "ARCHIVE_SCHEMA"
  data_retention_days = 7
}


