{%- snapshot snap_tags -%}
{{
    config(
        target_schema='snapshots',
        unique_key=['user_id', 'movie_id', 'tag_timestamp'],
        strategy='timestamp',
        updated_at='tag_timestamp',
        invalidate_hard_deletes=True
    )
}} --- IGNORE ---

SELECT top 100
{{dbt_utils.generate_surrogate_key(['user_id', 'movie_id', 'tag'])}} AS raw_key,
  user_id,
  movie_id,
  tag,
  CAST(tag_timestamp AS TIMESTAMP_NTZ) AS tag_timestamp
FROM {{ ref('src_tags') }}

{%- endsnapshot -%}