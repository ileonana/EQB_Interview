-- Creating tables 
CREATE TABLE raw (
     "Reporting Date" DATE,
     Portfolio VARCHAR,
	 Lender_Type VARCHAR,
	 Insurance_Status VARCHAR,
	 Dimension VARCHAR,
	 Category VARCHAR,
	 "Total Loan Value Originated ($)"  BIGINT
);

CREATE TABLE rates (
     "period" DATE,
     portfolio VARCHAR,
	 expected_losses DECIMAL
);

-- join raw and rates table 
SELECT 	raw."Reporting Date", 
		raw.Portfolio,
	 	raw.Lender_Type,
	 	raw.Insurance_Status,
	 	raw.Dimension,
	 	raw.Category,
	 	raw."Total Loan Value Originated ($)",
	 	rates.expected_losses
INTO predicted_losses
FROM raw
LEFT JOIN rates
ON rates.period = raw."Reporting Date" and rates.portfolio = raw.Portfolio;

-- check
SELECT * FROM predicted_losses;

-- Pull 2016 total expected losses = sum of loan volumes* expected loss rate 
SELECT sum("Total Loan Value Originated ($)"*expected_losses)
From predicted_losses 
Where "Reporting Date" BETWEEN '2016-01-01' AND '2016-12-31';

