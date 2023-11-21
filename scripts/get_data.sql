SELECT *
FROM {source_table_name}
WHERE {ts_field_name} > '{min_source_ts}'
    AND {ts_field_name} < '{max_source_ts}';