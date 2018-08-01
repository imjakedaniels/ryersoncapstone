# ryersoncapstone

Customer Retention UI

This project aims to develop a statistically stronger classification model to predict customer churn compared to a standard, non-dimensionality-reduced, logistic-regression model. I will visualize the trends responsible for increasing the propensity to churn then calculate customer-lifetime value (CLV) and lift to budget a Churn Management Program centred around targeting false-positive customers who are at-risk to churn and suggest solutions that can help reduce the risk.

I will make a better model by performing various dimensionality-reduction techniques to handle NA values, outliers and extreme values to reduce the number of rows in my dataset then normalize the numeric values.  I will reduce the number of variables by removing them based on results from near-zero variance, multi-colinearity, information-gain, and Boruta importance. This will generate a condensed dataset to train a mixture or models using R, Caret and Weka. I will calculate the gain difference between my model and a basic, untouched model to find the real dollar difference my improved model brings to the company.

My dataset can be found here: https://www.kaggle.com/abhinav89/telecom-customer/data 
It has approx. 100,000 rows, 100 variables, and a description of each variable here: http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.489.5495&rep=rep1&type=pdf

Procedure: 

I will be splitting the data into subsets relating to Billing, Customer, CustService, Product, Operations and Service using R and exporting them by writing a script from MySQLWorkbench to a MySQL cloud-server hosted on AWS. 

I will connect to the server with R and pull the data for cleaning - handling NA, restructuring variables - to prepare it for Exploratory Analysis. With Weka I can leverage java-powered machine learning to return cluster analysis, decision trees and infogain from variables to better look at predictors of churn.

I will reduce the dimensions of the data using techniques that look at reducing rows by normalizing the data into z-scores and removing those which test in the 99% confidence of being an outlier. I will reduce the number of variables in half with techniques which examine high multicolinearity, near-zero variance, low information-gain and low Boruta importance. This increases the accuracies while reducing the computation time required.

I will then train, validate and compare classification methods with R, using the following models: base R's Logistic Regression, Caret's 10-Fold Logistic Regression, Caret's Gradient Boost Machine, Weka's LogitBoost, Weka's Naive Bayes, and Weka's Random Forest models and evaluate the best model based on AUC, Lift and False-Positive Rate. I can then evaluate the projected revenue earned by my Churn Management Program which targets the top 5% of predicted-to-chun customers with a $50 rebate aimed to retain 30%. This is why a strong lift and low false-positive rate benefit the goal of the Churn Management Program.

Using this information, I will simulate ad-hoc reporting using Tableau. Ex. Studying behaviours of new home owners with a newborn child. As well, generate monthly earnings and demographics. 

This all will showcase my ability to optimize and compare classification models from different packages, utilize pre-built reporting tool (Tableau) to generate reports, design & interact with a cloud-based dataset by writing scripts and connections and cleaning & mutating a dataset in R.
