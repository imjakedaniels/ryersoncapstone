# ryersoncapstone

Customer Retention UI

I want to create a Shiny App in R that displays a customer’s profile with demographics, billing history, customer service, and technical records that displays their risk to churn as "LOW" or "AT-RISK" based on machine learning models - logistic regression, gradient boost, random forest, J48 decision tree, k-means Clustering - optimized using Weka's java-powered UI.

The goal is to design a UI that can look up customer records for a call-center employee to either proactively call the customer to sell services, or reactively examine customer details when the customer calls customer-service. I hope this can be a tool to assist a telecom or other types of subscription-based business interested in customer retention.

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
