# ryersoncapstone

Customer Retention UI

I want to create a Shiny App in R that displays a customer’s profile with billing history, customer service, and technical records that displays their risk to churn based on models optimized in R or SAS.

The goal is to design a UI that can look up customer records for a call-center employee to either proactively call the customer to sell services, or reactively examine customer details when the customer calls customer-service. I hope this can be a tool to assist a telecom or other types of subscription-based business interested in customer retention.

My dataset can be found here: https://www.kaggle.com/abhinav89/telecom-customer/data It has approx. 100,000 rows, 100 variables, and a description of each variable here: http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.489.5495&rep=rep1&type=pdf

Procedure (order may vary) I will be preparing the data with R – handling missing data, normalization, renaming columns for SQL-type query, splitting into training/test groups, or any type of mutation necessary.

I will be creating and comparing classification methods in R or Python, such as: Logistic Regression Linear Discriminant Analysis (LDA) Classification and Regression Trees (CART). k-Nearest Neighbors (kNN). Support Vector Machines (SVM) with a linear kernel. Random Forest (RF) Gradient Boost Machine (GBM) …to find the best performing model and optimize it.

I will design a structured dataset for MySQL with tables like Billing (Billing.revenue, Billing.length, Billing.avg3mon), Customer Service (Cust.total.time, Cust.total.call), and Technical History (Tech.phone, Tech.broadband) …and probably a few more, that is hosted on a cloud service like AWS, allowing access for Shiny to generate these profiles from anywhere.

I will design a Shiny UI with a mixture of metrics and visualizations organized in tabs similar to the tables listed above for high-end, user-friendly outlook on all customers.

This will showcase my ability to design a UI to showcase data with Shiny, design & interact with a cloud-based dataset by writing scripts, compare multiple classification models in either Python or R, and cleaning & mutating a dataset in R.
