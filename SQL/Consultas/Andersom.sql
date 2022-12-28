select 
  codveiculo,
  placa,
  pesocargakg2, 
  pesocargakg,
  chassi,
  tipoveiculo2,
  renavam,
  ufplacaveiculo,
  nomeproprietario, 
  ieproprietario, 
  ufproprietario,
  tipocarroceria,
  tiporodado,
  cgccpfproprietario,
  antt,
  tipoveiculo,
  proprio,
  codfilial,
  codtipoveiculo  

from   pcveicul 
where  placa in ('DUH6G52');

----------------TIPOVEICULO2 - TEM QUE SER  = 1 PARA REBOQUE E 0 PARA CAVALO-----------------------------

---- PREENCHER PESOCARGAKG2 = PESOCARGAKG
---- PREENCHER CHASSI
---- PREENCHER TIPOVEICULO2 - TEM QUE SER  = 0 PARA CAVALO E 1 PARA EMPELENTO(REBOQUE)
---- PREENCHER O RENAVAM
---- PREENCHER ufplacaveiculo = SP
---- PREENCHER nomeproprietario = COMPRE FACIL COM. DE PROD.ALIM.LTDA
---- PREENCHER ieproprietario = 647435106116
---- PREENCHER ufproprietario = 'SP'
---- PREENCHER tipocarroceria = 02 PARA CAVALO, 02 PARA CARRETA
---- PREENCHER tiporodado = 1
---- PREENCHER cgccpfproprietario = 05955701000106
---- PREENCHER antt = 123456789
---- PREENCHER tipoveiculo = P
---- PREENCHER proprio = S
---- PREENCHER codfilial = 51
---- PREENCHER codtipoveiculo = 1 PARA REBOQUE
                                                                                                         


UPDATE 
     PCVEICUL
SET  PESOCARGAKG2 = PESOCARGAKG
WHERE PLACA in ('DUH6G52');
     
          
