{% macro generate_alias_name(custom_alias_name=none, node=none) -%}

    {#-
        Converts dbt snake_case model names into warehouse-standard aliases.

        Examples:
            stg_customers               → STG_Customers
            int_customer_credit_summary → INT_Customer_Credit_Summary
            dim_customer                → DIM_Customer
            fct_loan_contracts          → FCT_Loan_Contracts

        Explicit aliases always take precedence.
    -#}

    {%- if custom_alias_name is not none -%}

        {{ custom_alias_name | trim }}

    {%- else -%}

        {%- set model_name = node.name -%}

        {%- if '_' in model_name -%}

            {%- set prefix = model_name.split('_')[0] | upper -%}
            {%- set suffix = model_name.split('_')[1:] | join(' ') | title | replace(' ', '_') -%}

            {{ prefix }}_{{ suffix }}

        {%- else -%}

            {{ model_name }}

        {%- endif -%}

    {%- endif -%}

{%- endmacro %}