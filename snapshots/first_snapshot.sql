{% snapshot first_snapshot %}
   {{
       config(
           target_database='this_db',
           target_schema='snapshots',
           unique_key='id',

           strategy='timestamp',
           updated_at='updated_date',
       )
   }}

   select * from {{ ref('snapshot_model')}}
{% endsnapshot %}