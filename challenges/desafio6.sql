SELECT 
    ROUND(MIN(subscription_price), 2) AS faturamento_minimo,
    ROUND(MAX(subscription_price), 2) AS faturamento_maximo,
    ROUND(AVG(subscription_price), 2) AS faturamento_medio,
    ROUND(SUM(subscription_price), 2) AS faturamento_total
FROM
    user AS u
        INNER JOIN
    subscription AS s ON u.subscription_id = s.subscription_id;
