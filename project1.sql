use project;
#1. total loan amount funded
select concat('₹ ', format(sum(`Loan Amount`), 2)) as total_loan_amount_funded
from bank_data2;
SELECT 
    CASE
        WHEN SUM(REPLACE(`loan amount`, ',', '') * 1) >= 10000000 
            THEN CONCAT(ROUND(SUM(REPLACE(`loan amount`, ',', '') * 1) / 10000000, 1), 'Cr')
        WHEN SUM(REPLACE(`loan amount`, ',', '') * 1) >= 100000 
            THEN CONCAT(ROUND(SUM(REPLACE(`loan amount`, ',', '') * 1) / 100000, 1), 'L')
        WHEN SUM(REPLACE(`loan amount`, ',', '') * 1) >= 1000 
            THEN CONCAT(ROUND(SUM(REPLACE(`loan amount`, ',', '') * 1) / 1000, 1), 'K')
        ELSE SUM(REPLACE(`loan amount`, ',', '') * 1)
    END AS total_loan_funded
FROM bank_data2;
#2.total loans
select count(*) as total_loans from bank_data2;

select * from bank data2;
#3.total collection
select concat('₹ ', format(sum(`Total Payment`), 2)) as total_collection
FROM bank_data2;
SELECT 
    CASE
        WHEN SUM(`total payment`) >= 10000000 THEN CONCAT(ROUND(SUM(`total payment`) / 10000000, 1), 'Cr')
        WHEN SUM(`total payment`) >= 100000 THEN CONCAT(ROUND(SUM(`total payment`) / 100000, 1), 'L')
        WHEN SUM(`total payment`) >= 1000 THEN CONCAT(ROUND(SUM(`total payment`) / 1000, 1), 'K')
        ELSE SUM(`total payment`)
    END AS total_collection
FROM bank_data2;

#4.Total interest
select concat('₹ ',format(sum(`Total pymnt inv`), 2)) as total_interest 
from bank_data2;
select case
           when sum(`total pymnt inv`) >=10000000 then concat(round(sum(`total pymnt inv`)/10000000,1), 'Cr')
		    when sum(`total pymnt inv`) >=100000 then concat(round(sum(`total pymnt inv`)/100000,1), 'L')
		    when sum(`total pymnt inv`) >=1000 then concat(round(sum(`total pymnt inv`)/1000,1), 'K')
            else sum(`total pymnt inv`)
	end as total_interest from bank_data2;
#5. Branch wise performance
select `Branch Name`,sum(`total Rrec int`+`total fees`+`total Rec late fee`+`Recoveries`)as Total_Revenue from bank_data2
                    group by `Branch Name` order by Total_Revenue desc;
 select `Branch name`, SUM(`total Rrec int` + `total fees` + `total Rec late fee` + `Recoveries`) as total_Revenue,
        case
        WHEN SUM(`total Rrec int` + `total fees` + `total Rec late fee` + `Recoveries`) >= 10000000 
            THEN CONCAT(ROUND(SUM(`total Rrec int` + `total fees` + `total Rec late fee` + `Recoveries`) / 10000000, 1), 'Cr')
        WHEN SUM(`total Rrec int` + `total fees` + `total Rec late fee` + `Recoveries`) >= 100000
            THEN CONCAT(ROUND(SUM(`total Rrec int` + `total fees` + `total Rec late fee` + `Recoveries`) / 100000, 1), 'L')
        WHEN SUM(`total Rrec int` + `total fees` + `total Rec late fee` + `Recoveries`) >= 1000
            THEN CONCAT(ROUND(SUM(`total Rrec int` + `total fees` + `total Rec late fee` + `Recoveries`) / 1000, 1), 'K')
        ELSE SUM(`total Rrec int` + `total fees` + `total Rec late fee` + `Recoveries`)
    END AS total_revenue_formatted

FROM bank_data2
GROUP BY `Branch Name`
ORDER BY total_Revenue DESC;                   
                    
 #6.state wise loan  
 select `state name`,concat('₹ ',format(sum(`loan amount`), 2)) as total_loan_amount from bank_data2
 group by `state name`order by total_loan_amount desc;
 SELECT 
    `state name`,
    CASE
        WHEN SUM(`loan amount`) >= 10000000 
            THEN CONCAT(ROUND(SUM(`loan amount`) / 10000000, 1), 'Cr')
        WHEN SUM(`loan amount`) >= 100000 
            THEN CONCAT(ROUND(SUM(`loan amount`) / 100000, 1), 'L')
        WHEN SUM(`loan amount`) >= 1000 
            THEN CONCAT(ROUND(SUM(`loan amount`) / 1000, 1), 'K')
        ELSE SUM(`loan amount`)
    END AS total_loan_amount
FROM bank_data2
GROUP BY `state name`
ORDER BY SUM(`loan amount`) DESC;
  select `state name`,count(`loan amount`) as total_loans from bank_data2
 group by `state name`order by total_loans desc;
 #7.Reliogion wise loans
 update bank_data2
set Religion = 'Others'
Where Religion is null 
   or trim(Religion) = '';
 select `Religion`,count(`loan amount`) as total_loans from bank_data2
 group by `Religion` order by total_loans desc; 
 
 #8.product group wise loan
 select `purpose category` as `product group wise`,count(`loan amount`) as total_loans from bank_data2
 group by `product group wise` order by total_loans desc; 
 
 #9.Dibursement trend
 select year(STR_TO_DATE(`Disbursement Date`, '%d-%m-%Y')) as year,
count(`Loan Amount`) as total_disbursed
from bank_data2
group by year(STR_TO_DATE(`Disbursement Date`, '%d-%m-%Y'))
order by year;

#10.Grade wise loans
update bank_data2
set Grade = 'Others'
where Grade is null or trim(Grade)='';
select `Grade`,count(`loan amount`) as total_loans from bank_data2 group by `Grade` order by total_loans desc;

#11.default loan count
select count(*) as default_loan_count from bank_data2 where `is default loan`='Yes';

#12.Delinquent client count
select count(*) as delinquent_client_count from bank_data2 where `is delinquent loan`='Yes';

#13.Delinquent loan rate
select concat(round((sum(case When `is delinquent loan` = 'Yes' then 1 else 0 end) * 100.0) / count(*),2),'%')
as delinquent_loan_rate_percentage from bank_data2;

#14. Default loan rate
select concat(round((sum(case when `is default loan` = 'Yes' then 1 else 0 end) * 100.0) / count(*),2),'%') 
as default_loan_rate_percentage from bank_data2;

 #15.Loan status wise loans
 select `Loan status`,count(*) as total_loans from bank_data2 group by `loan status`order by total_loans desc;
 
 # 16.Age group wise loan
 select case
             when age between 18 and 25 then "18-25"
             when age between 26 and 35 then "26-35"
             when age between 36 and 45 then "36-45"
             when age between 46 and 60 then "46-60"
             else "60+"
             end as Age_group, count(*) as total_loans from bank_data2
           group by Age_group order by Age_group; 
           
 #17. NO Verified loans
 select count(*) as tatal_loans from bank_data2 where `verification status` = 'Not verified';
 
#18. loan maturity
select `disbursement date`,term,Date_add(STR_TO_DATE(`disbursement date`, '%d-%m-%Y'),
interval term month) as maturity_date,Concat(floor(term/12), ' Years ', mod(term,12), ' Months') as duration from bank_data2;

