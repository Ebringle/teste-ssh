SELECT 

  C.DATA,
  M.NUMCAR,
  P.DESCRICAO,
  M.NUMPED,
  M.QTORIG,
  C.QTCORTADA,
 SUM (c.qtcortada * c.pvenda) as vlcorte,
  C.QTSEPARADA,
  --- Valor Separado
  SUM (c.qtseparada * c.pvenda) as vlSeparada,
  --- Estoque
  SUM (m.qtorig - c.qtseparada) as Estoque,
  --- Valor Estoque
  SUM (m.qtorig * c.pvenda) as VlEstoque
 
 
    
FROM CF_MOVENDPEND M,
     PCEMPR   A,  
     PCCORTEI C,  
     PCPRODUT P,  
     PCCORTEI C  
      

where M.CODFUNCOS = A.MATRICULA
AND   C.CODPROD = M.CODPROD
AND   P.CODPROD = M.CODPROD
AND   M.NUMCAR  = C.NUMCAR
 
     
 and TRUNC(c.data) >= '29-nov-2022'
 and TRUNC(c.data) <='29-nov-2022'
  
GROUP BY 
      
  C.DATA,
  M.NUMCAR,
  P.DESCRICAO,
  M.NUMPED,
  M.QTORIG,
  C.QTCORTADA,
  C.QTSEPARADA
 
  
