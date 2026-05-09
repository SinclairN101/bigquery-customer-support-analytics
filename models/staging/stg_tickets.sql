with source as (

    select *
    from {{ source('raw_customer_support', 'tickets') }}

),

clean as (

    select

        -- Primary Key
        ticket_id,

        -- Customer Information

        initcap(customer_name) as customer_name,
        lower(customer_email) as customer_email,
        customer_age,
        customer_gender,

        -- Product Information

        initcap(product_purchased) as product_purchased,

        -- Purchase Date

        cast(date_of_purchase as date) as purchase_date,

        -- Ticket Attributes

        ticket_type,
        ticket_subject,
        ticket_description,
        ticket_status,
        resolution,

        -- Ticket Metadata

        ticket_priority,
        ticket_channel,

        -- Response / Resolution Timestamps

       datetime(first_response_time, 'America/New_York') as first_response_time_est,
       datetime(time_to_resolution, 'America/New_York') as time_to_resolution_est,

        -- Customer Satisfaction
        
        cast(customer_satisfaction_rating as int64) as customer_satisfaction_rating

    from source

)

select *
from clean