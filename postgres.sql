select * from user_cc."ccGui_readingvalues" cgr 
where "timestamp" >= to_timestamp('2020-07-01','YYYY-MM-DD') 
and "timestamp" < to_timestamp('2020-07-08','YYYY-MM-DD')
and ala not in (
select distinct dev."fullDeviceId" 
from user_cc."ccGui_device" dev 
join user_cc."ccGui_deviceincluster" dic on dic.device_id = dev.id 
join user_cc."ccGui_cluster" clu on clu.id = dic.cluster_id 
and clu.alias in ('0004/04604', '0120/04929', '0135/09020')
)
