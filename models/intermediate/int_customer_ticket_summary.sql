with tickets as (

    select *
    from {{ ref('stg_tickets') }}

),

customer_ticket_summary as (

    select

        -- Dimensions
        customer_email,
        any_value(customer_name) as customer_name,
        any_value(customer_age) as customer_age,
        any_value(customer_gender) as customer_gender,

        -- Measures
        count(ticket_id) as total_tickets,
        countif(ticket_status = 'Open') as open_tickets,
        countif(ticket_status = 'Closed') as closed_tickets,
        round(avg(customer_satisfaction_rating), 1) as avg_customer_satisfaction_rating,

        -- Date / Timestamps
        min(purchase_date) as first_ticket_date,
        max(purchase_date) as latest_ticket_date

    from tickets
    group by 1

)

select *
from customer_ticket_summary