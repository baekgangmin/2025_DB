-- 아래에 미션을 수행하는 쿼리를 작성해 보세요.
insert into product values(4, 'trump card', 100, null, 10000, 9000);

insert into product values(5, 'onion', 100, '2019-04-11', 2000, 1800);

select count(name) from product;

select sum(stock) from product;

select max(selling_price) from product;