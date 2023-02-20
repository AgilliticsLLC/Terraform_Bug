resource snowflake_table TEST_TABLE {
  database = snowflake_database.archive_database.name
  schema = snowflake_schema.archive_schema.name
  name = "TEST_TABLE"
  column {
    name = "PK"
    type = "NUMBER(38,0)"
    nullable = false
  }
  column {
    name = "CREATED_TIMESTAMP"
    type = "TIMESTAMP_TZ(9)"
  }
  column {
    name = "DESCRIPTION"
    type = "VARCHAR(16777216)"
  }
}  

resource "snowflake_object_parameter" "archive_data_retention" {
  key         = "DATA_RETENTION_TIME_IN_DAYS"
  value       = 7
  object_type = "TABLE"
  object_identifier {
    database = snowflake_database.archive_database.name
    schema     = snowflake_schema.archive_schema.name
    name = snowflake_table.TEST_TABLE.name
  }
}


