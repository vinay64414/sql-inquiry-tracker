--- Open Inquiries (Newest First) ---
id | customer_name | issue_type     | status | created_at
---------------------------------------------------------
5  | Vikas Singh   | Refund Request | Open   | latest
4  | Sneha Gupta   | Product Return | Open   | ...
3  | Amit Kumar    | Refund Request | Open   | ...
2  | Priya Reddy   | Payment Issue  | Open   | ...
1  | Rahul Sharma  | Order Delay    | Open   | ...

--- Refund Related Inquiries ---
Amit Kumar  | Refund Request | "I want a refund..."
Vikas Singh | Refund Request | "Refund not processed yet"

--- Gmail Users ---
rahul@gmail.com
amit@gmail.com
sneha@gmail.com

--- After Updates ---
ID 1 → Resolved
ID 2 → In Progress

--- After Deletion ---
Spam record removed
Old records (>30 days) removed

--- GROUP BY Output ---
issue_type       | total_inquiries
----------------------------------
Refund Request   | 2
Order Delay      | 1
Payment Issue    | 1
Product Return   | 1