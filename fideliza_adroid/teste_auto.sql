tab 1 parametro 17 (CAMPANHA) TAB 2 CAMPANHA / DATA FATURAMENTO /ZONA TAB 3 DATA_NAVEG / CAMPANHA / ZONA / FLAG


SELECT RIID_,
       CAMPANHA
FROM CL
JOIN TAB 3 B ON $A$.CUSTOMER_ID =$B$.CUSTOMER_ID
JOIN tab 2 ON tab 2.zona = tab 3 .zona
WHERE trunc(data_faturamento) = trunc(sysdate -2) EXISTS
    (SELECT 1
     FROM TAB 3 A
     WHERE FLAG = 0
       AND A.CAMPANHA = B.CAMPANHA -1
       AND A.CUSTOMER_ID = B.CUSTOMER_ID) NOT EXISTS
    (SELECT 1
     FROM TAB 3 A
     WHERE FLAG = 1
       AND A.CAMPANHA = B.CAMPANHA -1
       AND A.CUSTOMER_ID = B.CUSTOMER_ID)
    AND
NOTHING



