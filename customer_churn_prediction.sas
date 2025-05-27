/* Customer Churn Prediction using SAS */

/* Step 1: Import Dataset */
proc import datafile="churn.csv"
    out=churn_data
    dbms=csv
    replace;
    getnames=yes;
run;

/* Step 2: Data Cleaning */
data churn_clean;
    set churn_data;
    if missing(TotalCharges) or TotalCharges=" " then delete;
    TotalCharges_num = input(TotalCharges, best12.);
    if Churn = "Yes" then Churn_flag = 1;
    else if Churn = "No" then Churn_flag = 0;
run;

/* Step 3: EDA */
proc freq data=churn_clean;
    tables Churn Contract InternetService;
run;

proc means data=churn_clean n mean min max;
    var Tenure MonthlyCharges TotalCharges_num;
    class Churn;
run;

/* Step 4: Logistic Regression */
proc logistic data=churn_clean descending;
    class Gender Contract InternetService / param=ref;
    model Churn_flag = Tenure MonthlyCharges TotalCharges_num Gender Contract InternetService;
run;

/* Step 5: Export Results */
proc export data=churn_clean
    outfile="churn_scored_results.csv"
    dbms=csv
    replace;
run;
