================
Primary Keys
================

{% docs ticket_id %}

Unique identifier for the customer support ticket.

{% enddocs %}


================
Dimensions
================

{% docs customer_name %}

Full name of the customer associated with the support ticket.

{% enddocs %}


{% docs customer_email %}

Customer email address associated with the support ticket.

{% enddocs %}


{% docs customer_age %}

Age of the customer associated with the support ticket.

{% enddocs %}


{% docs customer_gender %}

Gender of the customer associated with the support ticket.

{% enddocs %}


{% docs product_purchased %}

Product or service associated with the customer support request.

{% enddocs %}


{% docs ticket_type %}

Classification of the customer support request.

{% enddocs %}


{% docs ticket_subject %}

Short summary describing the support issue.

{% enddocs %}


{% docs ticket_description %}

Detailed explanation of the customer support issue submitted by the customer.

{% enddocs %}


{% docs ticket_status %}

Current lifecycle status of the support ticket.

{% enddocs %}


{% docs resolution %}

Resolution notes or final outcome of the support ticket.

{% enddocs %}


{% docs ticket_priority %}

Priority level assigned to the support ticket.

{% enddocs %}


{% docs ticket_channel %}

Communication channel used to submit the support ticket.

{% enddocs %}


================
Date / Timestamps
================

{% docs purchase_date %}

Date the product or service was originally purchased.

{% enddocs %}


{% docs first_response_time_est %}

Timestamp representing the first customer support response converted to Eastern Standard Time.

{% enddocs %}


{% docs time_to_resolution_est %}

Timestamp representing when the support ticket was resolved converted to Eastern Standard Time.

{% enddocs %}


{% docs first_ticket_date %}

Earliest recorded support ticket purchase date associated with the customer.

{% enddocs %}


{% docs latest_ticket_date %}

Most recent recorded support ticket purchase date associated with the customer.

{% enddocs %}

================
Measures
================

{% docs customer_satisfaction_rating %}

Customer satisfaction score submitted after ticket resolution.

{% enddocs %}

{% docs total_tickets %}

Total number of support tickets submitted by the customer.

{% enddocs %}


{% docs open_tickets %}

Total number of customer support tickets currently in an open status.

{% enddocs %}


{% docs closed_tickets %}

Total number of customer support tickets successfully closed.

{% enddocs %}


{% docs avg_customer_satisfaction_rating %}

Average customer satisfaction rating across all customer support tickets.

{% enddocs %}