Projeto FarmTech Solutions - Modelagem de Banco de Dados

Este repositório contém a modelagem relacional do sistema de monitoramento agrícola desenvolvido para a FarmTech Solutions, uma startup fictícia. O objetivo é armazenar dados sobre sensores utilizados em plantações, aplicações de produtos agrícolas e o controle de culturas, permitindo o monitoramento eficiente das operações agrícolas.

⸻

Diagrama Entidade-Relacionamento (DER)

A seguir, apresentamos o modelo relacional com suas respectivas entidades e relacionamentos:

Cultura
	•	Atributos:
id_cultura (PK), nome, tipo
	•	Relacionamento:
	•	Uma cultura pode estar associada a várias plantações (1:N).

Sensor
	•	Atributos:
id_sensor (PK), tipo, unidade_medida
	•	Relacionamento:
	•	Um sensor pode gerar várias leituras (1:N).

Plantação
	•	Atributos:
id_plantacao (PK), nome, localizacao, id_cultura (FK)
	•	Relacionamento:
	•	Uma plantação pertence a uma cultura (N:1).
	•	Uma plantação pode ter várias leituras de sensores e várias aplicações de produtos (1:N).

Leitura_Sensor
	•	Atributos:
id_leitura (PK), data_hora, valor, id_sensor (FK), id_plantacao (FK)
	•	Relacionamento:
	•	Cada leitura está associada a um sensor e a uma plantação.

Aplicacao_Produto
	•	Atributos:
id_aplicacao (PK), data_hora, quantidade, tipo_produto, id_plantacao (FK)
	•	Relacionamento:
	•	Cada aplicação de produto está associada a uma plantação.

⸻

Arquivos
	•	modelo.sql – Script SQL utilizado para a criação das tabelas no banco de dados Oracle.
	•	FarmTech_Modelo.dmd – Arquivo do modelo de banco de dados criado no SQL Developer Data Modeler.
	•	DER_FarmTech.png – Diagrama Entidade-Relacionamento visual gerado a partir do SQL Developer Data Modeler.

⸻

Considerações Técnicas
	•	Integridade Referencial: O modelo foi desenvolvido com chaves primárias (PK) e estrangeiras (FK) para garantir a integridade dos dados e os relacionamentos corretos entre as tabelas.
	•	Normalização: As tabelas foram normalizadas para evitar redundância de dados e melhorar a performance do banco.
	•	Objetivo: Todas as entidades no modelo refletem componentes reais do processo agrícola, com foco no monitoramento de variáveis e controle de insumos.

⸻

Como Utilizar
	1.	Executar o Script SQL: Importe o arquivo modelo.sql no seu banco de dados Oracle para criar as tabelas.
	2.	Visualizar o Modelo: Abra o arquivo FarmTech_Modelo.dmd no SQL Developer Data Modeler para uma visualização interativa do modelo de dados.
	3.	Consultar o Diagrama ER: Utilize o arquivo DER_FarmTech.png como referência visual para entender o relacionamento entre as entidades.

⸻

Desenvolvedor

Murilo de Faria Benhossi
Curso de Inteligência Artificial – FIAP
Desenvolvido como parte do projeto acadêmico.
