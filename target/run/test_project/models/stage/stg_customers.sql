
  create view "dbt"."dbt"."stg_customers__dbt_tmp" as (
    select * from "dbt"."public"."raw_customers"
  );