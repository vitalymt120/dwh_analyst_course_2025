-- выполнить ddl для таблиц источников (src_test)
{% macro run_ddl() %}

{% set sources = 'CREATE table IF NOT EXISTS src_test (id serial, b varchar(255) default \'hello\')' %}
{{ run_query(sources) }}
{{print('Source tables created')}}

{% endmacro  %}