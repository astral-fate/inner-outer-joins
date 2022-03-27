
/*
Which account (by name) placed the earliest order? Your solution should have the account name and the date of the order.

select min(a.name), min(o.occurred_at)
from accounts as a
join orders as o
on a.id=o.account_id
*/

/*
Find the total sales in usd for each account. You should include two columns - the total sales for each company's orders in usd and the company name.

select o.total_amt_usd, a.name
from orders as o
join accounts as a
on a.id=o.account_id 
order by o.total_amt_usd


Via what channel did the most recent (latest) web_event occur, which account was associated with this web_event? Your query should return only three values - the date, channel, and account name.
*/
select a.name, o.occurred_at, w.channel
from web_events as w
join accounts as a
on a.id=w.account_id
join orders as o
on a.id=o.account_id
group by channel



