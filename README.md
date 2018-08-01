# ryersoncapstone

Customer Retention UI

This project aims to develop a statistically stronger classification model to predict customer churn compared to a standard, non-dimensionality-reduced, logistic-regression model. I will visualize the trends responsible for increasing the propensity to churn then calculate customer-lifetime value (CLV) and lift to budget a campaign centred around targeting true-negative customers who are at-risk to churn and suggest solutions that can help reduce the risk.

I will make a better model by performing various dimensionality-reduction techniques to handle NA values, outliers and extreme values to reduce the number of rows in my dataset then normalize the numeric values.  I will reduce the number of variables by removing them based on results from near-zero variance, multi-colinearity, information-gain, and Boruta importance. This will generate a condensed dataset to train a mixture or models using R, Caret and Weka. I will calculate the gain difference between my model and a basic, untouched model to find the real dollar difference my improved model brings to the company.

My dataset can be found here: https://www.kaggle.com/abhinav89/telecom-customer/data 
It has approx. 100,000 rows, 100 variables, and a description of each variable here: http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.489.5495&rep=rep1&type=pdf

Procedure: 

I will be splitting the data into subsets relating to Billing, Customer, CustService, Product, Operations and Service using R and exporting them by writing a script from MySQLWorkbench to a MySQL cloud-server hosted on AWS. 

I will connect to the server with R and pull the data for cleaning - handling NA, restructuring variables - preparing it for Exploratory Analysis in Weka. With Weka I can leverage java-powered machine learning to return cluster analysis, decision trees and infogain from variables to better look at predictors of churn.

I will also creating and comparing classification methods with R , such as: Logistic Regression, Linear Discriminant Analysis (LDA), Classification and Regression Trees (CART), k-Nearest Neighbors (kNN), Support Vector Machines (SVM) with a linear kernel, Random Forest (RF), and Gradient Boost Machine (GBM) …to find the best performing model. 
Note: R is not my preferred platform for more complex models like RF, but it works well for logistic and GBM which are standards.

Using this information, I will simulate ad-hoc reporting using Tableau. Ex. Studying behaviours of new home owners with a newborn child. As well, generate monthly earnings and demographics. 
Note: Unfortunately, the data has no time variables allowing to compare to previous months.

Lastly, I will design a Shiny UI with a mixture of metrics and visualizations organized in tabs similar to the tables listed above for high-end, user-friendly outlook on all customers. It will utilizing tidyverse and the ggplot packages for summarizing a customer's profile aimed to assist call-centers.

This all will showcase my ability to design a UI to showcase data with Shiny, utilize pre-built reporting tool (Tableau) to generate reports, design & interact with a cloud-based dataset by writing scripts and connections, compare multiple classification models in both Weka & R, and cleaning & mutating a dataset in R.
