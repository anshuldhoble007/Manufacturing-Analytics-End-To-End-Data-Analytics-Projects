create database manufacturing_data;
use manufacturing_data;
select count(*)
from manufacturing_data;
select * from manufacturing_data limit 10;


/*******************************************Overview******************************************************************/

/*Total Production*/
select sum(produced_qty) as total_production 
from manufacturing_data;

/* Total Processed quantity*/
select sum(rejected_qty) as total_rejection
from manufacturing_data;


/* Total Manufacturing Value */
select sum(total_value) as total_production_value
from manufacturing_data;


/* Productipon Efficiency */
select ( sum(produced_qty) / sum(wo_qty)) * 100
as production_efficiency 
from manufacturing_data;


/* Rejection rate */
select (sum(rejected_qty) / sum(produced_qty)) * 100
as rejection_rate
from manufacturing_data;


/* Department Performance*/
select department_name,
sum(produced_qty) as total_production
from manufacturing_data
group by department_name
order by total_production DESC;


/* Manchine Performance*/
select machine_code,
sum(produced_qty) as machine_production
from manufacturing_data
group by machine_code
order by machine_production DESC;


/* Employee Performance*/
select emp_name,
sum(produced_qty) as employee_production
from manufacturing_data
group by emp_name
order by employee_production DESC
limit 10;


/* Product Performance*/
select item_name,
sum(produced_qty) as product_production
from manufacturing_data
group by item_name
order by product_production DESC
limit 10;


/* Daily Production Trend*/
select doc_date,
sum(produced_qty) as daily_production
from manufacturing_data
group by doc_date
order by doc_date;



/*******************************************Thank You******************************************************************/


















