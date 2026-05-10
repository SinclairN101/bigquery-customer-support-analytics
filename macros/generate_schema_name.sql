{% macro generate_schema_name(custom_schema_name, node) %}

    {% if target.name == 'prod' %}

        {{ custom_schema_name | upper }}

    {% else %}

        DEV_NATHAN_{{ custom_schema_name | upper }}

    {% endif %}

{% endmacro %}