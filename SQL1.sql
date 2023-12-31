SELECT
	   MENU_NAME
  FROM TBL_MENU;

SELECT
	   MENU_NAME
     , MENU_PRICE
     , MENU_CODE
  FROM TBL_MENU;
  
SELECT
	   *
  FROM TBL_MENU; 
  
  
 SELECT 6 + 3;
 SELECT 6 * 3;
 
 SELECT NOW();
 SELECT CONCAT('홍', ',', '길동') AS 붙이기;
  
  SELECT
		MENU_CODE,
        MENU_NAME,
        MENU_PRICE
   FROM TBL_MENU
  ORDER BY MENU_PRICE;
  
SELECT
	   MENU_CODE,
       MENU_NAME,
       MENU_PRICE
  FROM TBL_MENU
 ORDER BY MENU_PRICE DESC,
		  MENU_NAME ASC;
        
SELECT
	   MENU_CODE,
       MENU_NAME,
       MENU_PRICE * MENU_CODE
  FROM TBL_MENU
 ORDER BY MENU_CODE * MENU_PRICE DESC; 

SELECT
	   FIELD(ORDERABLE_STATUS, 'N', 'Y')
  FROM TBL_MENU;
  
SELECT
	   MENU_NAME,
       ORDERABLE_STATUS
  FROM TBL_MENU
 ORDER BY FIELD(ORDERABLE_STATUS, 'N', 'Y'); 
 
 SELECT
	   MENU_NAME,
	   MENU_PRICE,
       ORDERABLE_STATUS
  FROM TBL_MENU
 WHERE ORDERABLE_STATUS = 'Y';

SELECT
	   MENU_NAME,
       MENU_PRICE,
       ORDERABLE_STATUS
  FROM TBL_MENU
 WHERE MENU_PRICE = 13000;
 
SELECT
	   MENU_CODE,
       MENU_NAME,
       ORDERABLE_STATUS
  FROM TBL_MENU
 WHERE ORDERABLE_STATUS != 'Y'; 
 
SELECT
	   MENU_CODE,
       MENU_NAME,
       MENU_PRICE
  FROM TBL_MENU
 WHERE MENU_PRICE > 20000;
 
SELECT
	   MENU_CODE,
       MENU_NAME,
       MENU_PRICE
  FROM TBL_MENU
 WHERE MENU_PRICE <= 20000;
 
SELECT
	   MENU_NAME,
       MENU_PRICE,
       CATEGORY_CODE,
       ORDERABLE_STATUS
  FROM TBL_MENU
 WHERE ORDERABLE_STATUS = 'Y'
   AND CATEGORY_CODE = 10;
   
SELECT
	   MENU_NAME,
       MENU_PRICE,
       CATEGORY_CODE,
       ORDERABLE_STATUS
  FROM TBL_MENU
 WHERE ORDERABLE_STATUS = 'Y'
    OR CATEGORY_CODE = 10
 ORDER BY CATEGORY_CODE;
 
SELECT
	   MENU_CODE,
       MENU_NAME,
       MENU_PRICE,
       CATEGORY_CODE,
       ORDERABLE_STATUS
  FROM TBL_MENU
 WHERE MENU_PRICE > 5000
    OR CATEGORY_CODE = 10;
    
SELECT
	   1 OR 0 AND 0;
 
SELECT (1 OR 0) AND 0;

SELECT
	   MENU_CODE,
       MENU_NAME,
       MENU_PRICE,
       CATEGORY_CODE,
       ORDERABLE_STATUS
  FROM TBL_MENU
 WHERE CATEGORY_CODE = 4 
	OR MENU_PRICE = 9000
   AND MENU_CODE > 10;
   
SELECT
	   MENU_NAME,
       MENU_PRICE,
       CATEGORY_CODE
  FROM TBL_MENU
 WHERE MENU_PRICE >= 10000
   AND MENU_PRICE <= 25000
 ORDER BY MENU_PRICE;
 
SELECT
	   MENU_NAME,
       MENU_PRICE,
       CATEGORY_CODE
  FROM TBL_MENU
 WHERE MENU_PRICE BETWEEN 10000 AND 25000
 ORDER BY MENU_PRICE;
 
SELECT
	   MENU_NAME,
       MENU_PRICE
  FROM TBL_MENU
 WHERE MENU_NAME LIKE '%마늘%';
 
SELECT
	   MENU_CODE,
       MENU_NAME,
       MENU_PRICE,
       CATEGORY_CODE,
       ORDERABLE_STATUS
  FROM TBL_MENU
 WHERE MENU_PRICE > 5000
   AND CATEGORY_CODE = 10
   AND MENU_NAME LIKE '%갈치%';
   
SELECT
	   MENU_NAME,
       CATEGORY_CODE
  FROM TBL_MENU
 WHERE CATEGORY_CODE IN (4, 5, 6)
 ORDER BY CATEGORY_CODE;
 
SELECT
	   CATEGORY_CODE,
       CATEGORY_NAME,
       REF_CATEGORY_CODE
  FROM TBL_CATEGORY
 WHERE REF_CATEGORY_CODE IS NULL; 
 