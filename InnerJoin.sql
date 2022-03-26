Provide a table for all web_events associated with account name of Walmart. 
There should be three columns.
 Be sure to include the primary_poc, time of the event, and the channel for each event.
 Additionally, you might choose to add a fourth column to assure only Walmart events were chosen.
select a.primary_poc, w.occurred_at, w.channel
from web_events as w
join accounts as a
on w.accounts_id=a.id


Provide a table that provides the region for each sales_rep along with their associated accounts.
 Your final table should include three columns: the region name, the sales rep name, and the account name.
 Sort the accounts alphabetically (A-Z) according to account name.

select r.name as region, s.name as sales, a.name as name
from region r
join sales_reps s
on s.region_id=r.id
join accounts a
on s.id=a.sales_rep_id

Provide the name for each region for every order, as well as the account name and the unit price they paid 
(total_amt_usd/total) for the order.
 Your final table should have 3 columns: region name, account name, and unit price. 
A few accounts have 0 for total, so I divided by (total +0.01) to assure not dividing by zero.

//on this solution you did great job joing two tables along with their PK, FK. However, the third table
has to be linked with the primary key, of the previous second table. Then, we can introduce the fourth table
select r.name as region, a.name as account, o.total_amt_usd/(o.total + 0.01) as unit_price
from accounts a
join order o
on a.id= o.account_id
join sales_reps s
--join region as r
on s.region_id=r.id





// where you managed your confustion. Great job! you have to first link the already joined table with the third one.
After that you can jooin the fourth table.

select r.name as region, a.name as account, o.total_amt_usd/(o.total + 0.01) as unit_price
from accounts a
join orders o
on a.id= o.account_id
join sales_reps s
--join region as r
on s.id=a.sales_rep_id
join region r
on r.id=s.region_id








select r.name as region, a.name as account, o.total_amt_usd/(o.total + 0.01) as unit_price
from region r
join sales_reps s
on r.id= s.region_id
join accounts a
on a.sales_rep_id=s.id
join orders o
on o.account_id=a.id









Provide a table that provides the region for each sales_rep along with their associated accounts. 
This time only for the Midwest region. Your final table should include three columns: 
the region name, the sales rep name, and the account name. Sort the accounts alphabetically (A-Z)

select r.name as region, s.name as sales, a.name as name
from sales_reps as s
join region as r
on s.region_id=r.id
join accounts a 
on a.sales_rep_id=s.id
join orders o
on o.account_id=a.id
where r.name='Midwest'
order by a.name asc;


Provide a table that provides the region for each sales_rep along with their associated accounts. 
This time only for accounts where the sales rep has a first name starting with S and in the Midwest region. 
Your final table should include three columns: the region name, the sales rep name, and the account name. 
Sort the accounts alphabetically (A-Z) according to account name

select r.name as region, s.name as sales_reps, a.name as name
from sales_reps as s
join accounts a
on a.sales_rep_id=s.id
join region r
on r.id=s.region_id
where s.name like 's%'
and/or r.name='Midwest'


Provide a table that provides the region for each sales_rep along with their associated accounts. 
This time only for accounts where the sales rep has a last name starting with K and in the Midwest region. 
Your final table should include three columns: the region name, the sales rep name, and the account name. 
Sort the accounts alphabetically (A-Z) according to account name.

select r.name as region, s.name as sales_reps, a.name as name
from sales_reps as s
join accounts a
on a.sales_rep_id=s.id
join region r
on r.id=s.region_id
where s.name like 'K%'
and/or r.name='Midwest'
