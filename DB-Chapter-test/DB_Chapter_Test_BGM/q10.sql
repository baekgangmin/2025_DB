-- 10번
select
    ccm.card_company_id,
    ccm.company_name,
    ccm.fee,
    round(sum(od.pay_price * (ccm.fee / 100))) AS calculation
from
    orders o
join
    orders_detail od 
ON o.order_number = od.orders
join
    card_company_manager ccm 
ON o.card_company = ccm.card_company_id
where
    o.order_status = '3001'
group by
    ccm.card_company_id,
    ccm.company_name,
    ccm.fee
order by
    ccm.card_company_id;
