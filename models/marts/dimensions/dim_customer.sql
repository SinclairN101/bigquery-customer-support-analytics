with customer_summary as (

    select *
    from {{ ref('int_customer_ticket_summary') }}

),

final as (

    select

        -- Primary Key
        {{ dbt_utils.generate_surrogate_key(['customer_email']) }} as customer_key,

        -- Dimensions
        customer_email,
        customer_name,
        customer_age,
        customer_gender,

        -- Measures
        total_tickets,
        open_tickets,
        closed_tickets,
        avg_customer_satisfaction_rating,

        -- Date / Timestamps
        first_ticket_date,
        latest_ticket_date

    from customer_summary

)

select *
from final