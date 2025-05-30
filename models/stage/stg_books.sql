select
book_id,author,
upper(title) as title
,publication_yaer,genre
from {{ref('raw_books')}}