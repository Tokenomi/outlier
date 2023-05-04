select
  block_timestamp::date as date,
  count(distinct signers[0]) as users
from
  solana.core.fact_transactions
where
  block_timestamp::date between (CURRENT_DATE - 3) and (CURRENT_DATE - 1)
group by
  date
order by
  date desc