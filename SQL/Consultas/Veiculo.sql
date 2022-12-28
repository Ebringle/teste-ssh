SELECT
  codveiculo,
  placa,
  PESOCARGAKG,
  PESOCARGAKG2,       /*DEVE SER IGUAL A PESOCARGAKG */
  CHASSI,             /* DEVE ESTAR PREENCHIDO */
  TIPOVEICULO2,       /* 0 = CAVALO   1 = EMPLEMENTO (REBOQUE) */
  RENAVAM,            /* DEVE ESTAR PREENCHIDO */
  ufplacaveiculo,     /* ufplacaveiculo = SP */
  nomeproprietario,   /*COMPRE FACIL COM. DE PROD.ALIM.LTDA */
  ieproprietario,     /* 647435106116 */
  ufproprietario,     /* 'SP' */
  tipocarroceria,     /*  02 PARA CAVALO, 02 PARA CARRETA */
  tiporodado,         /* = 1 */
  cgccpfproprietario, /*  05955701000106 */
  antt,               /*123456789 */
  tipoveiculo,        /* P */
  proprio,            /* S */
  codfilial,          /* 51 */
  codtipoveiculo      /* 1 PARA REBOQUE */

from   pcveicul WHERE

   
  nomeproprietario <> 'COMPRE FACIL COM. DE PROD.ALIM.LTDA' OR
  PESOCARGAKG2 <> PESOCARGAKG            OR
  CHASSI = ''                            OR /* DEVE ESTAR PREENCHIDO */
  TIPOVEICULO <> '0'                     OR /* 0 = CAVALO   1 = EMPLEMENTO (REBOQUE) */
  RENAVAM = ''                           OR /* DEVE ESTAR PREENCHIDO */
  ufplacaveiculo <> 'SP'                 OR /* ufplacaveiculo = SP */
  ieproprietario <> 647435106116         OR /* 647435106116 */
  ufproprietario <> 'SP'                 OR /* 'SP' */
  tipocarroceria <> '02'                 OR /*  02 PARA CAVALO, 02 PARA CARRETA */
  tiporodado     <> '1'                  OR /* = 1 */
  cgccpfproprietario <> '05955701000106' OR /*  05955701000106 */
  antt <> '123456789'                    OR /*123456789 */
  tipoveiculo <> 'P'                     OR /* P */
  proprio <> 'S'                         OR /* S */
  codfilial <> '51'                      OR /* 51 */
  codtipoveiculo <>'1'                      /* 1 PARA REBOQUE */

       




 




