/*
Provide a table for all web_events associated with account name of Walmart. There should be three columns. Be sure to include the primary_poc, time of the event, and the channel for each event. Additionally, you might choose to add a fourth column to assure only Walmart events were chosen. 
*/


select accounts.primary_poc, web_events.channel, web_events.occurred_at
from accounts
join web_events
on accounts.id=web_events.id
where name='Walmart';

/*

Provide a table that provides the region for each sales_rep along with their associated accounts. Your final table should include three columns: the region name, the sales rep name, and the account name. Sort the accounts alphabetically (A-Z) according to account name. 


select sales_reps.name sales_reps.region_id
from sales_reps
join accounts
on accounts.sales_reps.id=sales_reps.id

select region.name, sales_reps.name, accounts.name
--sales_reps.
from region
join sales_reps
on sales_reps.region_id=region.id
join accounts
on sales_reps.id=accounts.id;
*/


/*
select *
--accounts.name, sales_reps.name, region.name
from sales_reps
join region
on region.id=sales_reps.region_id
join accounts 
on accounts.id=sales_reps.id
*/


select region.name as region, sales_reps.name as reps, accounts.name as account 
from sales_reps
join region
on sales_reps.region_id=region.id
join accounts
on accounts.sales_rep_id=sales_reps.id
order by accounts.name asc;
