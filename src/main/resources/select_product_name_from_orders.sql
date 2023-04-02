SELECT product_name
FROM DAO_Netology.orders o
         join DAO_Netology.customers c on c.id = o.customer_id
where UPPER(c.name) = UPPER(:name);