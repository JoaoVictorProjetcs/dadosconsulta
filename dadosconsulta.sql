CREATE VIEW DadosConsulta4 AS

SELECT c.id_consulta, c.data, c.medico_crm, (SELECT m.nome FROM medico m WHERE m.id_crm = c.medico_crm) AS nome_medico, c.paciente_cpf, (SELECT p.nome FROM paciente p WHERE p.id_cpf = c.paciente_cpf) AS nome_paciente, c.relatorio

FROM consulta c;


