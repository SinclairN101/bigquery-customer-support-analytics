with tickets as (

    select *
    from {{ ref('stg_tickets') }}

),

dim_customer as (

    select *
    from {{ ref('dim_customer') }}

),

final as (

    select

        -- Primary Key
        {{ dbt_utils.generate_surrogate_key(['tickets.ticket_id']) }} as ticket_key,

        -- Foreign Keys
        dim_customer.customer_key,

        -- Dimensions
        tickets.ticket_id,
        tickets.ticket_type,
        tickets.ticket_subject,
        tickets.ticket_status,
        tickets.ticket_priority,
        tickets.ticket_channel,
        tickets.product_purchased,
        tickets.resolution,

        -- Measures
        tickets.customer_satisfaction_rating,
        tickets.first_response_time_est,
        tickets.time_to_resolution_est,

        -- Date / Timestamps
        tickets.purchase_date,

        -- Metadata
        current_timestamp() as warehouse_loaded_at

    from tickets

    left join dim_customer
        on tickets.customer_email = dim_customer.customer_email

)

select *
from final