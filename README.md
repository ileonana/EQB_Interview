# EQB_Interveiw
# Introduction
1. What were the total predicted losses for the mortgage (mtg) portfolio in 2016 calendar year?
2. What are some factors that can cause the predicted loss rates to change?

## Tools 
Python and SQL are used to compare the result. 

## Explanation
Python: 
1. Load and merge Data
2. Getting the predicted loss
3. Mark the targeted year/summarze
4. Exporting

Pro: 
1. The model can be easily updated for different aspects, with the capability of analyzing data through liner regression/rolling average etc,
2. The model can also intergrated with SQL/VBA along with automatic data feeding through HTML. 

Con:

1. The model requires manual update on the coding itself to have the result updated(Update from 2016 - 2017). Adding prompt input UI would also increase the chance of error.

SQL: 
1. Create tables / Loading data
3. Merge two tables by reporting date and portfolio 
4. Calculate 2016 Data

Pro: 
1. Straight processing Logic, better upgradability for any change in the Data feeding.
2. Potential UI friendly through various existing software

Con:
1. Might be lagging once the Database getting bigger



## Results 
The Total Predicted Loss in 2016 is $ 117,308,934.20


## Factors that can cause the predicted loss rates to change

Generally speaking, the following factors will impact the predicted loss rates:

1. Economic conditions: Changes in the economy, such as inflation, interest rates, and unemployment
2. Market conditions: Changes in market conditions, such as competition and supply and demand
3. Consumer behavior: Changes in consumer behavior, credit score, such as spending patterns and preferences
4. Regulatory environment: Changes in laws and regulations, such as new insurance requirements
5. Technology advancements: Advances in technology, such as the widespread use of autonomous vehicles
6. Natural disasters: Natural disasters

The quantitive process will be based on the General approach and ECL model, we will be focusing on the Exposures At Default, Probability of Default, and Loss Given Default.

## Exposures At Default
The predicted amount of loss a bank may be exposed to when a debtor defaults on a loan. As we are under Advanced internal ratings-based instead of F-IRB, we will have more flexibility on the calculation. With different loan/credit types, we might have different considerations for the risks. However, as the EAD is the worst-case scenario instead othe LGD, I believe we should include as much factors as we could to predict.

### Probability of Default 
Default probability is the likelihood over a specified period, usually one year, that a borrower will not be able to make scheduled repayments

### Loss Given Default 
LGD is the best scenario approach for EAD. And it heavily relies on the recovery rate. The following will have a significant impact on the recoverability. 

1. Collateral: The presence and value of collateral can also affect the LGD.
2. Legal and regulatory environment: Changes in laws and regulations can also impact the LGD, as they may affect the ability of the lender to recover their loan in the event of default.
3. Loan terms and conditions: The terms and conditions of a loan, such as the interest rate and repayment schedule, can also affect the LGD.
