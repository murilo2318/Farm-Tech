Projeto FarmTech Solutions - Modelagem de Banco de Dados

Este repositório contém o modelo relacional do sistema de monitoramento agrícola da startup fictícia **FarmTech Solutions**. O modelo foi desenvolvido com foco no armazenamento de dados de sensores em plantações, aplicações de produtos e controle de culturas.

---

## DER Textual

- **Cultura** (id_cultura, nome, tipo)  
  ↳ Uma cultura pode estar associada a várias plantações (1:N).

- **Sensor** (id_sensor, tipo, unidade_medida)  
  ↳ Um sensor pode gerar várias leituras (1:N).

- **Plantação** (id_plantacao, nome, localizacao, id_cultura)  
  ↳ Uma plantação pertence a uma cultura (N:1).  
  ↳ Uma plantação pode ter várias leituras de sensores e várias aplicações de produtos (1:N).

- **Leitura_Sensor** (id_leitura, data_hora, valor, id_sensor, id_plantacao)  
  ↳ Cada leitura está associada a um sensor e a uma plantação.

- **Aplicacao_Produto** (id_aplicacao, data_hora, quantidade, tipo_produto, id_plantacao)  
  ↳ Cada aplicação de produto está relacionada a uma plantação.

---

## Arquivos

- `modelo.sql` – Script de criação das tabelas no Oracle SQL.
- `FarmTech_Modelo.dmd` – Modelo do banco de dados criado no SQL Developer Data Modeler.
- `DER_FarmTech.png` – Diagrama Entidade-Relacionamento visual exportado do Data Modeler.

---

## Observações

- O modelo foi pensado para garantir integridade referencial, com uso de chaves primárias e estrangeiras.
- As tabelas foram normalizadas para evitar redundância de dados.
- Todas as entidades representam elementos reais do processo de monitoramento e manejo agrícola.

---

Desenvolvido para o curso de Inteligência Artificial – FIAP  
Por: Murilo de Faria Benhossi
