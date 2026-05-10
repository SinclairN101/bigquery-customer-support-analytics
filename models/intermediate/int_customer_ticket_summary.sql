with tickets as (

    select *
    from {{ ref('stg_tickets') }}

),

customer_ticket_summary as (

    select

        -- Dimensions
        customer_name,
        customer_email,
        customer_age,
        customer_gender,

        -- Measures
        count(ticket_id) as total_tickets,
        countif(ticket_status = 'Open') as open_tickets,
        countif(ticket_status = 'Closed') as closed_tickets,
        round(avg(customer_satisfaction_rating), 1) as avg_customer_satisfaction_rating,

        -- Date / Timestamps
        min(purchase_date) as first_ticket_date,
        max(purchase_date) as latest_ticket_date

    from tickets
    group by 1,2,3,4

)

select *
from customer_ticket_summary