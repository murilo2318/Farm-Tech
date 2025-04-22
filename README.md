Projeto FarmTech Solutions - Modelagem de Banco de Dados

Este repositório contém o modelo de banco de dados relacional para o sistema de monitoramento agrícola da FarmTech Solutions, dedicada à agricultura digital. O objetivo do modelo é fornecer uma estrutura robusta para armazenar, consultar e manipular dados relacionados ao monitoramento de condições de plantações, sensores, leituras e aplicação de produtos agrícolas.

Objetivo do Modelo
O modelo foi desenvolvido com o intuito de:

	•	Gerenciar dados de plantações: Incluindo informações sobre a cultura, localização e o monitoramento das condições ambientais e do solo.
	•	Armazenar dados de sensores: Que capturam informações essenciais sobre variáveis como temperatura, umidade, pH, e nutrientes.
	•	Controlar o uso de insumos: Registrar as aplicações de produtos nas plantações, como fertilizantes, pesticidas, e outros insumos agrícolas.

Estrutura do Modelo

Tabelas e Relacionamentos
	•	Cultura: Contém informações sobre as culturas agrícolas, como nome e tipo.
Relacionamento: Cada cultura pode ter várias plantações associadas.
	•	Sensor: Registra dados sobre os sensores utilizados para medir as condições das plantações, incluindo tipo de sensor e unidade de medida.
Relacionamento: Cada sensor pode gerar várias leituras.
	•	Plantação: Armazena dados sobre as plantações específicas, como nome e localização. Está relacionada a uma cultura e pode ter várias leituras e aplicações de produtos associadas.
Relacionamento: Uma plantação pertence a uma cultura e pode ter várias leituras de sensores e várias aplicações de produtos.
	•	Leitura_Sensor: Armazena os dados coletados pelos sensores, incluindo o valor da leitura e a data e hora de coleta.
Relacionamento: Cada leitura é associada a um sensor e a uma plantação.
	•	Aplicacao_Produto: Registra as aplicações de produtos agrícolas nas plantações, incluindo o tipo de produto, a quantidade e a data e hora de aplicação.

Arquivos

	•	modelo.sql: Script SQL para a criação das tabelas e definição dos relacionamentos no banco de dados Oracle.
	•	FarmTech_Modelo.dmd: Arquivo do modelo de banco de dados criado no SQL Developer Data Modeler, que permite a visualização e modificação do modelo.
	•	DER_FarmTech.png: Diagrama visual do modelo de banco de dados, exportado do Data Modeler, mostrando os relacionamentos entre as entidades.

Características Técnicas

	•	Integridade Referencial: O modelo garante que as tabelas estejam corretamente relacionadas, utilizando chaves primárias e estrangeiras. Isso assegura que dados inconsistentes ou órfãos não sejam registrados.
	•	Normalização: As tabelas foram projetadas para minimizar redundâncias e otimizar a utilização de espaço e performance. A normalização também facilita a manutenção dos dados e a atualização das informações de forma eficiente.
	•	Escalabilidade: O modelo foi desenvolvido de forma a ser facilmente escalável, permitindo a adição de novas culturas, sensores, e tipos de produtos sem a necessidade de refazer o modelo.

Processos de Desenvolvimento
O desenvolvimento deste banco de dados foi realizado em etapas que incluíram:

	1.	Levantamento de Requisitos: Identificação das principais necessidades da FarmTech Solutions para o armazenamento e gerenciamento de dados agrícolas.
	2.	Modelagem Conceitual: Definição das entidades principais e seus relacionamentos, criando um modelo conceitual do banco de dados.
	3.	Modelagem Relacional: Conversão do modelo conceitual em um modelo relacional, definindo tabelas, campos e chaves.
	4.	Implementação no Banco de Dados: Escrita do script SQL para a criação das tabelas no Oracle, garantindo que todas as dependências e integridade referencial fossem respeitadas.
	5.	Validação e Testes: Validação do modelo com dados fictícios para garantir que o modelo de banco de dados atenda a todos os requisitos e funcione conforme esperado.

Como Usar

	1.	Importação do Modelo SQL: Para criar o banco de dados, importe o arquivo modelo.sql em um banco de dados Oracle.
	2.	Visualização do Modelo: Abra o arquivo FarmTech_Modelo.dmd no SQL Developer Data Modeler para explorar e modificar o modelo de banco de dados.
	3.	Análise do Diagrama ER: O arquivo DER_FarmTech.png mostra uma representação visual das entidades e seus relacionamentos, facilitando a compreensão do modelo.

Como foi testado
O modelo de banco de dados foi testado em diversas etapas para garantir que ele atendesse aos requisitos do projeto e fosse funcional:

	1.	Validação da Estrutura do Banco de Dados: Após a criação das tabelas utilizando o script SQL, foi realizado um teste de integridade referencial para verificar se as chaves primárias e estrangeiras estavam corretamente implementadas. Isso ajudou a garantir que as relações entre as entidades (como Cultura, Sensor, Plantação, Leitura_Sensor e Aplicacao_Produto) estavam corretamente configuradas.
	2.	Testes de Inserção de Dados: Foram inseridos dados fictícios em todas as tabelas para verificar se o modelo estava aceitando os dados de forma adequada e sem erros. Esses dados simulavam situações reais, como diferentes tipos de culturas, sensores e leituras de sensores, permitindo avaliar se o banco de dados estava funcionando conforme o esperado.
	3.	Consultas de Teste: Diversas consultas SQL foram realizadas para garantir que os dados pudessem ser recuperados corretamente. Exemplos de consultas incluíram: a busca por leituras de sensores em uma plantação específica, o cálculo da quantidade de produtos aplicados em determinada cultura, e a análise das condições ambientais em um intervalo de tempo.
	4.	Testes de Integridade e Performance: A integridade referencial foi constantemente validada durante a inserção de dados. Também foi testada a performance de consultas com grandes volumes de dados, assegurando que o modelo fosse escalável e eficiente.

Desenvolvedor

Murilo de Faria Benhossi

Curso de Inteligência Artificial – FIAP
