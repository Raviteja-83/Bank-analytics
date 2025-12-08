# Bank-analytics
This project analyzes customer financial transactions and loan portfolios to understand bank performance, customer behavior, and risk patterns. The dataset includes credit transactions, debit transactions, and loan details such as disbursement amount, term, interest, maturity, and customer demographics.

EXCEL KEY FEATURES

The data shows two major things about bank's performance: your money flow is stable but customer activity is very low.
1. Extremely Balanced Money Flow bank's total Credits (money coming in) and Debits (money going out) are almost perfectly equal.
2. Total Credit Amount:127.60M
3. Total Debit Amount: 127.29
4. Credit to Debit Ratio: 1.0025
5. What this means: For every 1.00M that leaves the bank, 1.0025M comes in. This is a very small difference. accounts are near parity, which indicates financial stability in terms of overall cash flow, but doesn't tell you where the money is moving.
6. 2. Low Customer Activity (The Big Problem)
   3.   customers are not using their accounts much, which is a major concern for growth and engagement
   4.   .Number of Customers: 100,000
   5.    Number of Transactions (Credit + Debit): 100,000
   6.What this means: On average, I have only 1 transaction per customer for the entire period i analyzed. This suggests:Accounts are Dormant: A large number of  customers are inactive or barely using their bank accounts.
     3. Hardly Any Active Users
     4. The specialized "Account Activity Ratio" confirms that very few customers are frequent users.
     5. Account Activity Ratio: 1: 0.00019
     6. What this means: If this ratio measures highly active customers versus  total customer base, it implies that out of $\mathbf{100,000}$ customers, only about 19 customers are considered highly active. The vast majority of  business volume comes from a tiny fraction of  users.
     7. Actionable Summary
     8. The bank's ledger is healthy and balanced, but its operational performance is weak. i have 100,000 customers who are essentially non-users.  primary business objective should be to increase customer engagement and transaction volume to move accounts from "dormant" to "active."

   ![image alt](https://github.com/Raviteja-83/Bank-analytics/blob/281202a985c83940c4727e655e497e5b9e8e3c72/Screenshot%202025-12-07%20162217.png)

POWER BI KEY FEATURES

1.Overall financial performance

  * The bank shows a steady increase in credit transactions, indicating strong customer lending behavior.
  * Debit transactions remain stable, suggesting consistent customer withdrawals and payment activities.
   
2.Credit to debit ratio

  The ratio of credit to debit ration is 1.0061 that means 
  * Credit amount is slightly higher than debit amount.
  * The bank is issuing (or receiving) more credit transactions than the amount being debited/withdrawn.
  * This ratio is very close to 1, so the inflow (credit) and outflow (debit) are almost balanced.
   
3.Branch performance

  * Main branch is slightly higher than remaining branches in transaction method category
  * Remianing branch preformance of transaction method is very well

4.Transaction amount by bank

 * ICICI bank performace is higher than other banks
 * panjabi national bank very low performace according to transaction amount
  
5.Monthly transaction trend

 * The bank experiences stable transaction activity throughout the year.
 * May and October are the peak months for customer transactions.
 * December’s sharp drop may be due to missing or partial data.
  
6.Transaction Type Share

 * Customers are using bank services consistently for both inflows (credits) and outflows (debits).
 * No heavy dependency on either type of transaction.
  
7.Account activity Ratio

 * The bank may need to improve customer engagement to increase account activity rates.
   i am also insert page navigation and slicers in this dashboard.

   ![image alt](https://github.com/Raviteja-83/Bank-analytics/blob/07318e086b2cc00fc31929997df81a8451176e8f/Screenshot%202025-12-08%20155238.png)

Here there is another dataset named Bank analytics contains loan data and dashboard is loan dashboard and it was done by tableau and SQL

TABLEAU KET INSIGHTS

1. Overall Portfolio Performance

  * Total loan amount: ₹75,09,67,500
  * Total loans: 65,535
  * Total interest collected: ₹15,52,88,805.82
  * Total collection: ₹81,49,02,500.45

  The bank’s loan portfolio is performing strongly, with collections exceeding the total loan issued amount—indicating effective recovery operations.

2. Loan Status Breakdown

  * Active loans: 39,127
  * Closed loans: 18,929
  * Default loans: 7,479

A significant portion (60%) of loans are active, while 11.4% of loans are in default, requiring targeted follow-up to reduce future NPAs.

3. Default & Delinquent Overview

  * Default loan count: 1,020
  * Delinquent clients: 7,106

  Although default count appears moderate, the delinquent client number is high, suggesting a growing risk segment that needs action before they convert into full defaults.

4. State-wise Loan Performance

  Top performing states by loan count:

  *Uttar Pradesh: 11,965
  *Punjab: 10,192
  *Bihar: 8,544
  *Haryana: 6,832
  *Rajasthan: 5,730 

  The bank has the strongest customer base in North Indian states (UP, Punjab, Bihar).
  Lower loan counts in smaller states suggest market expansion opportunities.

5. Grade-wise Loan Distribution

 * Highest loan distribution in Grade A (25,818).
 * Grades B (10,085), C (12,020), D (8,098), E (5,307), F (2,842), G (1,049) show decreasing trend.

  Most loans fall under low-risk categories (A–C), indicating good credit quality and stable borrower profiles.

6. Branch-wise Performance

 * Many branches show collection amounts between 1M–4M, with some branches performing exceptionally.
 * Several branches show low or zero amounts (as seen in chart density).

 Branch performance is uneven, with some branches requiring additional support, training, or monitoring for better performance.    

7. Default Loan Rate by Branch

 * Several branches show extremely high default rates (e.g., >90%).
 * Some branches show 100% default rate, though likely due to low loan count or missing data.

 A few branches are high-risk zones and require audit, credit policy review, or improved underwriting controls.

8. Loan Maturity Distribution

  Loan maturity by year:

  2022: 18,339 (highest), 2021: 10,748, 2023: 9,115, 2020: 22, 2024: 5,536, 2025: 850

  A bulk of loans will mature in 2021–2023, meaning the bank should prepare for peak collection cycles during these years.

9. Disbursement Trend (2017–2020)

 * Strong disbursement growth from 2017 (21M) to 2020 (99.4M).
 * Stable trend across the timeline with multiple seasonal peaks.

 Loan disbursement has grown steadily, showing strong demand, especially in late 2019 and 2020.

10. Religion-wise Loans

  * Hindu: 49,155
  * Christian: 8,725
  * Muslim: 7,109

Majority of customers belong to the Hindu community, suggesting demographic dominance in certain regions.

11. Age Group-wise Loans

  * 26–35 age group holds the highest loan count.
  * Followed by 36–45 and 46–60.

  Most loans are given to working-age customers, indicating strong demand in income-generating borrower segments.

 12. Product-wise Loans

   * Home loans: 24,437 (largest share)
   * Other services account for remaining smaller portions.

   Home loans form the largest and most important product segment, providing stable, long-term revenue for the bank.  


 
 

 

   

     
