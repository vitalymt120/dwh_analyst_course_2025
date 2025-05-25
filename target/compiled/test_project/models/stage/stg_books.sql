select
book_id,author,
upper(title) as title
,publication_yaer,genre
from "dbt"."dbt"."raw_books"