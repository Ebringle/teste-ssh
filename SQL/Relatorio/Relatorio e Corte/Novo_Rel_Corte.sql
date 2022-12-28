SELECT 

  C.DATA,
  C.NUMCAR,
  P.DESCRICAO,
  C.NUMPED,
  C.QTORIG,
  C.TQCORTADA,
  C.QTSEPARADA,
  A.MATRICULA
  SUM (c.qtcortada * c.pvenda) as vlcorte,
  --- Valor Separado
  SUM (c.qtseparada * c.pvenda) as vlSeparada,
  --- Estoque
  SUM (m.qtorig - c.qtseparada) as Estoque,
  --- Valor Estoque
  SUM (m.qtorig * c.pvenda) as VlEstoque
  
FROM 

   CF_MOVENDPEND M,
   PCEMPR A,
   PCCORTEI C,
   PCPRODUT P
   
WHERE

   C.DATA BETWEEN :DTINICIO AND :DTFIM
   AND C.NUMPED = :NUMPEDIDO
   AND C.NUMCAR = :NUMCARREG
   AND M.DATA   = C.DATA
   AND M.CODFUNCOS = A.MATRICULA
   AND M.CODPROD = P.CODPROD

ORDER BY M.DATA
  
      
   
