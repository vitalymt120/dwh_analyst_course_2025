
    select {{column_name}}
    from {{ model }}
    group by {{column_name}}
    having count(*) > 1
