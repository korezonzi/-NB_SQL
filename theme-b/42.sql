UPDATE 商品
   SET 商品コード = 'E' || SUBSTRING(商品コード, 2, 4)
 WHERE SUBSTRING(商品コード, 1, 1) = 'M'
