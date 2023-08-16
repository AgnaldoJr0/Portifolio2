CREATE VIEW ContasNãoPagas AS
SELECT cr.id, c.Nome, c.CPF, cr.DataVencimento, cr.Valor
FROM ContaReceber cr
INNER JOIN Cliente c ON cr.client_ID = c.id
WHERE cr.Situação = 1;