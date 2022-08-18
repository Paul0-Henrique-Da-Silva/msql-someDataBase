SELECT 
 funcionario.cuidador_id,
 funcionario.nome,
 funcionario.gerente_id,
 gerente.gerente_id,
 gerente.nome
FROM 
 zoologico.cuidador AS funcionario
LEFT JOIN
 zoologico.gerente AS gerente ON funcionario.gerente_id = gerente.gerente_id ;
