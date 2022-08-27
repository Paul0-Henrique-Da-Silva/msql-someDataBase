SELECT
 CAST(MIN(plan_value) AS DECIMAL(5,2)) AS faturamento_minimo,
 CAST(MAX(plan_value) AS DECIMAL(5,2)) AS faturamento_maximo,
 CAST(AVG(PLANO.plan_value) AS DECIMAL(5,2)) AS faturamento_medio,
 CAST(SUM(PLANO.plan_value) AS DECIMAL(5,2)) AS faturamento_total
FROM SpotifyClone.planTable AS PLANO
INNER JOIN SpotifyClone.userTable AS USUARIO 
ON USUARIO.plan_id = PLANO.plan_id;