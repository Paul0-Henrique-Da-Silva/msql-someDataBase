-- 1 Uma query que exiba o maior salário da tabela
SELECT MAX(salary) FROM hr.employees;

-- 2 Uma query que exiba a diferença entre o maior e o menor sálario
SELECT MAX(salary) - MIN(salary) FROM hr.employees;

-- 3 Uma query que exibe a média salarial de cada job_id, ordenando pela média salarial em ordem decrescente
SELECT job_id, AVG(salary) AS 'average_salary' FROM hr.employees
GROUP BY job_id ORDER BY `average_salary` DESC;

-- 4 Uma query que exiba a quantidade de dinheira necessario para realizar o pagamento de todas as pessoas funcionários
SELECT SUM(salary) FROM hr.employees;

-- 5 Uma quer com 4 informações: o maior salário , o menor salário, a soma de todos os sálario e a média dos salários.
-- todos os valores devem ser formatados para ter apenas duas casa decimais;
SELECT MAX(salary), MIN(salary), SUM(salary), ROUND(AVG(salary),2) FROM hr.employees;

-- 7 Uma query que exiba a quantidade de dinheiro necessario para efetuar o pagamento de cada profissão;
SELECT job_id, SUM(salary) FROM hr.employees GROUP BY job_id;

--  8 Uma query que faça  alterações somente na quantidade de dinheiro necessario para cobrir a folha  de
-- pagamento de pessoa programadoras;
SELECT job_id, SUM(salary) FROM hr.employees GROUP BY job_id HAVING job_id = 'it_prog';

-- 9 Escreva uma query que exiba em ordem decrescente a média salarial de todos os cargos, exceto das 
-- pessoas programadoras (it_prog).
SELECT job_id, AVG(salary) 'average_salary' FROM hr.employees WHERE job_id <> 'it_prog' 
GROUP BY job_id ORDER BY `average_salary` DESC;

-- 10 Query que exiba média salarial e o numero de funcionarios de todos os departamento com mais de des funcionarios
SELECT department_id, AVG(salary) 'average_salary' , COUNT(*) 'number_of_employees'
FROM hr.employees GROUP BY department_id HAVING `number_of_employees` > 10;

-- 11 Escreva uma query que atualize a coluna phone_number, de modo que todos os telefones iniciados por 515 agora 
-- devem iniciar com 777.
SET SQL_SAFE_UPDATES = 0;
UPDATE hr.employees SET phone_number = REPLACE(phone_number, '515','777')
WHERE phone_number LIKE '515%';

-- 12 Escreva uma query que só exiba as informações dos funcionários cujo o primeiro nome tenha oito 
-- ou mais caracteres.
SELECT * FROM hr.employees WHERE LENGTH(first_name) >= 8;

-- 13 Escreva uma query que exiba as seguintes informações de cada funcionário: id, primeiro nome e ano no qual
-- foi contratado (exiba somente o ano).
SELECT employee_id, first_name, YEAR(hire_date) 'hire_year' FROM hr.employees;
-- SELECT employee_id, first_name, LEFT(hire_date, 4) 'hire_year' FROM hr.employees;
-- SELECT employee_id, first_name , MID(hire_date, 1, 4) 'hire_year' FROM hr.employees; MID/substring similar


