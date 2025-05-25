-- выполняет ddl для таблиц источников
{% macro run_ddl() %}

{% set sources = 'create table if not exists dbt.src_test (id serial, b varchar(255) default \'hello\')' %}
{{run_query(sources)}}
{{print('Source tables created')}}

{% endmacro %}