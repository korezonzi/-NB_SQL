-- select 名称 as なまえ,cast(hp as char + '/' + cast(mp as char))  as HPとMP
-- from パーティー

SELECT 名称 AS なまえ, HP || '／' || MP AS HPとMP,
       CASE 状態コード WHEN '00' THEN NULL
                     WHEN '01' THEN '眠り'
                     WHEN '02' THEN '毒'
                     WHEN '03' THEN '沈黙'
                     WHEN '04' THEN '混乱'
                     WHEN '09' THEN '気絶'
       END AS ステータス
  FROM パーティー
