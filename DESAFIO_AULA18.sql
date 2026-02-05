USE rh_db_HIDEKI;

CREATE TABLE Departamentos (
	id_depto INT PRIMARY KEY AUTO_INCREMENT,
    nome_adepto VARCHAR (50)
);

CREATE TABLE Niveis_Salariais (
	nivel VARCHAR (20) PRIMARY KEY,
    salario_min DECIMAL (10,2),
    salario_max DECIMAL (10,2)
);

CREATE TABLE Funcionarios (
	id_func INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (100),
    salario DECIMAL (10,2),
    depto_id INT NOT NULL,
		FOREIGN KEY (depto_id) REFERENCES Departamentos (id_depto)
        ON DELETE CASCADE
	);
    
INSERT INTO Departamentos VALUES (1, 'Vendas'), (2, 'TI'), (3, 'Inovação');
    
     
INSERT INTO Niveis_Salariais VALUES ('Junior', 3000, 5000), ('Pleno', 5001, 9000), ('Senior', 9001, 15000);
INSERT INTO Funcionarios VALUES (1, 'Ana', 4500, 1), (2, 'Beto', 8200, 1), (3, 'Clara', 12500, 2);

SELECT D.nome_adepto AS Departamentos, F.nome AS Funcionarios
FROM Departamentos D
LEFT JOIN Funcionarios F ON F.depto_id = D.id_depto; 

SELECT N.nivel , F.nome AS Funcionarios
FROM Funcionarios F
INNER JOIN Niveis_Salariais N ON F.salario BETWEEN N.salario_min AND N.salario_max;

SELECT F.nome AS Funcionarios
FROM Funcionario F 
INNER JOIN nome_adepto D ON  F.id_depto = D.id_depto
INNER JOIN Niveis_Salariais N ON F.salario BETWEEN N.salario_min AND N.salario_max
WHERE D.nome_depto = 'Vendas' AND n.nivel = 'Pleno';


 

 






