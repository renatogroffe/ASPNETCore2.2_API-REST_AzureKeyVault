CREATE DATABASE BaseCotacoes
GO

USE BaseCotacoes
GO

CREATE TABLE dbo.Cotacoes(
	Sigla char(3) NOT NULL,
	NomeMoeda varchar(30) NOT NULL,
	UltimaCotacao datetime NOT NULL,
	ValorComercial NUMERIC (18,4) NOT NULL,
	ValorTurismo NUMERIC (18,4) NULL,
	CONSTRAINT PK_Cotacoes PRIMARY KEY (Sigla)
)
GO


INSERT INTO dbo.Cotacoes
           (Sigla
           ,NomeMoeda
           ,UltimaCotacao
           ,ValorComercial
		   ,ValorTurismo)
     VALUES
           ('USD'
           ,'Dólar norte-americano'
           ,'11.01.2019 16:59'
           ,3.7145
		   ,3.8600)

INSERT INTO dbo.Cotacoes
           (Sigla
           ,NomeMoeda
           ,UltimaCotacao
           ,ValorComercial)
     VALUES
           ('EUR'
           ,'Euro'
           ,'11.01.2019 16:59'
           ,4.2578)

INSERT INTO dbo.Cotacoes
           (Sigla
           ,NomeMoeda
           ,UltimaCotacao
           ,ValorComercial)
     VALUES
           ('LIB'
           ,'Libra esterlina'
           ,'11.01.2019 16:59'
           ,4.7708)
