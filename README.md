# Churn Management Program - Ryerson Capstone Assignment

This project aims to develop a statistically stronger classification model to predict customer churn compared to a standard, non-dimensionality-reduced, logistic-regression model. I will visualize the trends responsible for increasing the propensity to churn then calculate the Lifetime Value of a Customer (LVC) and lift to budget a Churn Management Program centred around targeting false-positive customers who are at-risk to churn and suggest solutions that can help reduce the risk.

I will make a better model by performing various dimensionality-reduction techniques to handle NA values, outliers and extreme values to reduce the number of rows in my dataset then normalize the numeric values.  I will reduce the number of variables by removing them based on results from near-zero variance, multi-colinearity, information-gain, and Boruta importance. This will generate a condensed dataset to train a mixture or models using R, Caret and Weka. I will calculate the gain difference between my model and a basic, untouched model to find the real dollar difference my improved model brings to the company.

## Getting Started

My dataset can be found here: [Telecom Customer Data](https://www.kaggle.com/abhinav89/telecom-customer/data)

It has approx. 100,000 rows, 100 variables, and a [description of each variable here](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.489.5495&rep=rep1&type=pdf)

### Prerequisites

```
library(DBI)
library(RMySQL)
library(tidyverse)
library(gmodels)
library(plotly)
library(reshape2)
library(outliers)
library(caret)
library(e1071)
library(pROC)
library(RWeka)
```

## Procedure:

**Part 1)** 
I will be splitting the data into subsets relating to Billing, Customer, CustService, Product, Operations and Service using R and exporting them by writing a script from MySQLWorkbench to a MySQL cloud-server hosted on AWS. 

```
DROP TABLE IF EXISTS Customer;
CREATE TABLE Customer (
churn int,
months int,       
uniqsubs int,      
actvsubs int,        
crdlscod VARCHAR(2),
asl_flag VARCHAR(1),         
prizm_social_one VARCHAR(1),
area VARCHAR(50),             
phones int,         
models int,   
truck int,
rv int,
own_rent VARCHAR(1),        
lor int,             
dwlltype VARCHAR(1),         
marital VARCHAR(1),         
adults int,
infobase VARCHAR(1),           
income int,          
numbcars int,   
HHStatin VARCHAR(1), 
dwllsize VARCHAR(1),     
forgntvl int,
ethnic VARCHAR(1),        
kid0_2 VARCHAR(1),            
kid3_5 VARCHAR(1),         
kid6_10 VARCHAR(1),         
kid11_15 VARCHAR(1),       
kid16_17 VARCHAR(1),         
Customer_ID VARCHAR(10),
PRIMARY KEY(Customer_ID)
);
LOAD DATA LOCAL INFILE  
'C:/Users/Jake/Documents/ryersoncapstone1/Customer_info.csv'
INTO TABLE Customer 
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
```

**Part 2)** 
I will connect to the server with R and pull the data for cleaning - handling NA, restructuring variables - to prepare it for Exploratory Analysis. With Weka I can leverage java-powered machine learning to return cluster analysis, decision trees and infogain from variables to better look at predictors of churn.

```
cn <- dbConnect(drv      = RMySQL::MySQL(), 
                username = "root", 
                password = Sys.getenv("MY_PASS"), 
                host     = Sys.getenv("MY_HOST"), 
                port     = 3306, 
                dbname   = "capstoneryersonMYSQL")

Billing <- dbGetQuery(cn, "SELECT * FROM Billing;")
Customer <- dbGetQuery(cn, "SELECT * FROM Customer;")
CustService <- dbGetQuery(cn, "SELECT * FROM CustServ;")
Operations <- dbGetQuery(cn, "SELECT * FROM Operations;")
Product <- dbGetQuery(cn, "SELECT * FROM Product;")
Service <- dbGetQuery(cn, "SELECT * FROM Service;")

tele_clean <- inner_join(Billing, Customer) %>%
  inner_join(CustService) %>%
  inner_join(Operations) %>%
  inner_join(Product) %>%
  inner_join(Service)

write_csv(tele, "tele.csv")
```
Plenty of cleaning NAs in the .rmd where tele becomes **tele_clean**
```
which(is.na(tele_clean))
```

**Part 3)** 
I will reduce the dimensions of the data using techniques that look at reducing rows by normalizing the data into z-scores and removing those which test in the 99% confidence of being an outlier. I will reduce the number of variables in half with techniques which examine high multicolinearity, near-zero variance, low information-gain and low Boruta importance. This increases the accuracies while reducing the computation time required.

```
removed1 <- low_variance

removed2 <- churn_infogain %>%
  filter(churn_wekainfo <0.0002) %>%
  select(variable) %>%
  unlist()
```
![Weka info-gain](https://github.com/imjakedaniels/ryersoncapstone/blob/master/3%20Dimensionality%20Reduction/Reduction%20Visuals/weka%20-%20infogain_importance.png?raw=true)

```
removed3 <- names(boruta_output$finalDecision[boruta_output$finalDecision %in% "Rejected"]) 

nums <- unlist(lapply(final_set, is.numeric)) 
caret_high_correlation<- preProcess(x=final_set[,nums], method = c("corr"))

removed4 <- caret_high_correlation$method$remove
removed5 <- caret_high_correlation$method$ignore
```

**Part 4)**
I will then train, validate and compare classification methods with R, using the following models: base R's Logistic Regression, Caret's 10-Fold Logistic Regression, Caret's Gradient Boost Machine, Weka's LogitBoost, Weka's Naive Bayes, and Weka's Random Forest models and evaluate the best model based on AUC, Lift and False-Positive Rate. I can then evaluate the projected revenue earned by my Churn Management Program which targets the top 5% of predicted-to-chun customers with a $50 rebate aimed to retain 30%. This is why a strong lift and low false-positive rate benefit the goal of the Churn Management Program. 
![Predictive Model Performances](https://github.com/imjakedaniels/ryersoncapstone/blob/master/4%20Modelling/model_metrics_comparison.PNG?raw=true "Predictive Model Performances")

Random Forest visual
![Final Model](https://github.com/imjakedaniels/ryersoncapstone/blob/master/4%20Modelling/final_model_visual.PNG?raw=true "Final Model")

Using this information, I will simulate ad-hoc reporting using Tableau. Ex. Studying behaviours of new home owners with a newborn child. As well, generate monthly earnings and demographics. More here: [Jake's Public Tableau](https://public.tableau.com/profile/jake.daniels#!/vizhome/SimpleChurnDashboard/ChurnSimpleDash)

![Churn DashBoard](https://github.com/imjakedaniels/ryersoncapstone/blob/master/Tableau%20Reports/Notable%20Examples/Simple%20Churn%20Dash.png?raw=true "Churn DashBoard")
![Equipment Age](https://github.com/imjakedaniels/ryersoncapstone/blob/master/Tableau%20Reports/Notable%20Examples/Equipment_Age.PNG?raw=true "Equipment Age")

This all will showcase my ability to optimize and compare classification models from different packages, utilize pre-built reporting tool (Tableau) to generate reports, design & interact with a cloud-based dataset by writing scripts and connections and cleaning & mutating a dataset in R.

## Results

The Churn Management Program is projected to retain $7,831,250 from a sample of 500,000 customers when offering a $50 rebate at 50c cost to communicate to the 5% likeliest-to-churn customer as predicted by our Random Forest Model at a 30% success rate. The success rate effectiveness will depend on the campaign (e-mail or telemarketing) incorporating friendlier trends into the offer to lower the customer's likelihood to churn. Ex. Increase their phone usage, tie the discount to monthly terms, or offer new product at reduced rate.
