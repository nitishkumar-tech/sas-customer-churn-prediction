# Customer Churn Prediction using SAS

This project demonstrates how to build a customer churn prediction model using SAS. It uses logistic regression to predict which telecom customers are likely to leave.

## 📁 Files Included

- `customer_churn_prediction.sas`: Main SAS script to import, clean, analyze, and model churn data.
- `churn.csv`: Dummy telecom dataset.

## 🛠️ SAS Features Used

- PROC IMPORT / EXPORT
- PROC MEANS / FREQ
- PROC LOGISTIC
- Data transformation and cleaning

## 📊 Objective

Predict customer churn based on service usage, contract type, and payment method using logistic regression.

## 📦 Dataset Fields

- CustomerID, Gender, SeniorCitizen, Partner, Dependents
- Tenure, PhoneService, InternetService, Contract
- MonthlyCharges, TotalCharges, PaymentMethod, Churn

## ✅ How to Run

1. Open `customer_churn_prediction.sas` in SAS.
2. Ensure `churn.csv` is in the correct file path (or modify the path in the code).
3. Run the code to generate churn predictions.
