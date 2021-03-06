show tables;
select * from books

order by unit_price desc;
select * from customers;
select * from purchases;
select * from authors;

select * 
from purchases
left join customers
on purchases.cust_id = customers.id
left join books
on purchases.book_id = books.ISBN
left join authors
on books.author_id = authors.id
where timestamp >2020-01-01 and books.title = "Lord of the Rings"
limit 5;

select first_name,last_name, sum(purchases.quantity)
from customers
left join purchases
on customers.id = purchases.cust_id
group by first_name, last_name
limit 10
;