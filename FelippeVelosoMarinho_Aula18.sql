CREATE TABLE [TABELA NOTAS] 
(
	DATA DATE, 
	NUMNOTAS INT
)

DECLARE @DATAINICIAL DATE
DECLARE @DATAFINAL DATE
DECLARE @NUMNOTAS INT
SET @DATAINICIAL = '20170101'
SET @DATAFINAL = '20170110'
WHILE @DATAINICIAL <= @DATAFINAL
	BEGIN
		SELECT @NUMNOTAS = COUNT(*) FROM [TABELA DE NOTAS FISCAIS]
		WHERE DATA = @DATAINICIAL
		
		--INSERINDO NA TABELA 
		INSERT INTO [TABELA NOTAS] (DATA, NUMNOTAS) 
			VALUES (@DATAINICIAL, @NUMNOTAS)
		
		SELECT @DATAINICIAL = DATEADD(DAY, 1, @DATAINICIAL)
	END

SELECT * FROM [dbo].[TABELA NOTAS]