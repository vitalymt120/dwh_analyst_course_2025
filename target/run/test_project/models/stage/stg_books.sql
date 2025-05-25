
  create view "dbt"."dbt"."stg_books__dbt_tmp" as (
    select
book_id,author,
upper(title) as title
,publication_yaer,genre
from "dbt"."dbt"."raw_books"
  );