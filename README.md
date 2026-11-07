# Telco Customer Churn Analysis

## Overview
This project analyzes customer churn for a telecommunications company to identify which customers are most likely to leave, understand why they leave, and provide data-driven recommendations to improve retention.

Churn directly impacts recurring revenue. Retaining existing customers is significantly more cost-effective than acquiring new ones, making churn reduction a critical business priority.

## Business Problem
Telco is experiencing sustained customer churn, resulting in lost recurring revenue and increased customer acquisition costs.

The objective of this project was to:
- Identify which customer segments are most likely to churn
- Understand the key drivers behind churn
- Provide actionable recommendations to improve retention

## Dataset
The dataset contains customer demographic information, account details, services subscribed to, and churn status.

**Key fields include:**
- Customer demographics: Gender, Senior Citizen, Partner, Dependents
- Account information: Tenure, Contract, Payment Method, Monthly Charges, Total Charges
- Services: Phone Service, Internet Service, Online Security, Tech Support, Streaming Services
- Target variable: Churn (Yes / No)

## Tools Used
- **SQL (MySQL):** Data cleaning, exploration, and churn analysis
- **Power BI:** Interactive dashboard and data visualization


## Project Structure
- Telco-Customer-Churn-Analysis/
├── sql/
│   ├── 02_data_cleaning.sql
│   ├── 03_avg_monthly_and_total_charges_by_churn.sql
│   ├── 05_contract_payment_churn.sql
│   └── 06_service_impact_on_churn.sql
├── powerbi/
│   └── Telco Churn Dashboard.pbix
├── DASHBOARD TELCO.png
└── README.md
- **GitHub:** Version control and project documentation




## Dashboard Preview

![Telco Churn Dashboard](<DASHBOARD TELCO.png>)

The Power BI dashboard provides an interactive view of churn by contract type, internet service, tenure, payment method, and monthly charges.

## Key Insights

1. **Contract Type Is the Strongest Predictor of Churn**
Customers on month-to-month contracts churn at a significantly higher rate than customers on one-year or two-year contracts, due to low switching barriers and lack of long-term commitment.

2. **Fiber Optic Customers Churn at a Higher Rate**
Despite offering higher speeds, Fiber Optic customers show higher churn than DSL customers, suggesting concerns around pricing, perceived value, and service experience.

3. **New Customers Are Most at Risk**
Churn is highest within the first 12 months of tenure. The onboarding period is therefore the most critical window for retention.

4. **Payment Method Influences Churn**
Customers paying via Electronic Check churn more frequently than those using Bank Transfer, Credit Card, or Mailed Check, indicating a potential friction point in the payment experience.

5. **Lack of Support Services Increases Churn**
Customers without Tech Support, Online Security, and Online Backup are more likely to leave, highlighting the protective value of bundled support services.

6. **Higher Monthly Charges Correlate With Higher Churn**
As monthly charges increase, churn also increases. Customers paying premium prices without a corresponding perception of value are more likely to disengage.

## Recommendations

1. **Incentivize Long-Term Contracts:** Offer discounts or added benefits to migrate month-to-month customers to one-year or two-year plans.

2. **Improve the Fiber Optic Experience:** Review pricing, service quality, and customer support specifically for Fiber Optic subscribers.

3. **Strengthen First-Year Retention:** Introduce a structured onboarding program with check-ins at 30, 90, and 180 days.

4. **Promote Automatic Payment Methods:** Encourage migration from Electronic Check to Bank Transfer or Credit Card through simplified onboarding.

5. **Bundle Support Services:** Include Tech Support and Online Security as part of retention offers for high-risk customers.

6. **Review Pricing for High-Value Customers:** Introduce loyalty discounts or value-based packages for customers with high monthly charges.

## SQL Analysis
The `sql/` folder contains the queries used for this analysis:

- `02_data_cleaning.sql` - Data cleaning and preparation
- `03_avg_monthly_and_total_charges_by_churn.sql` - Comparison of charges by churn status
- `05_contract_payment_churn.sql` - Churn analysis by contract type and payment method
- `06_service_impact_on_churn.sql` - Impact of subscribed services on churn

## How to Use This Project
1. Run the SQL scripts in MySQL to reproduce the analysis
2. Open `powerbi/Telco Churn Dashboard.pbix` in Power BI Desktop to explore the dashboard
3. Review the Key Insights and Recommendations sections for business takeaways

## Conclusion
Churn is not random. It is concentrated among month-to-month customers, new customers, Fiber Optic users, and customers without support services. By targeting these high-risk segments with contract incentives, improved onboarding, and bundled support, Telco can significantly reduce churn and protect recurring revenue.
