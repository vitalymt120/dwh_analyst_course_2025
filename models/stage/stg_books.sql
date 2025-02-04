select
    book_id,
    author,
    title,
    publication_yaer,
    genre
from {{ref('raw_books')}}