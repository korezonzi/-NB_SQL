select distinct t.取引事由id, j.取引事由名
  from 取引 as t
  full join 取引事由 j
         on t.取引事由id = j.取引事由id
