# SQL LOAD
tele <- read_csv("C:/Users/Jake/Downloads/Telecom_customer churn.csv")

# Categorizing data
names(tele) <- c('Billing.rev_Mean', 'Operations.mou_Mean', 'Billing.totmrc_Mean', 'Operations.da_Mean', 'Operations.ovrmou_Mean', 'Billing.ovrrev_Mean',
                 'Billing.vceovr_Mean', 'Billing.datovr_Mean', 'Operations.roam_Mean', 'Operations.change_mou', 'Billing.change_rev', 'Service.drop_vce_Mean', 
                 'Service.drop_data_Mean', 'Service.blck_vce_Mean', 'Service.blck_data_Mean', 'Service.unan_vce_Mean', 'Service.unan_data_Mean', 
                 'Service.plcd_vcd_Mean', 'Service.plcd_data_Mean', 'Service.recv_vce_Mean', 'Service.recv_sms_Mean', 'Operations.comp_vce_Mean', 
                 'Operations.comp_data_Mean', 'CustServ.custcare_Mean', 'CustServ.ccrndmou_Mean', 'CustServ.cc_mou_Mean', 'Operations.inonemin_Mean', 
                 'Operations.threeway_Mean', 'Operations.mou_compvce_Mean', 'Operations.mou_compdata_Mean', 'Operations.mou_rvce_Mean', 'Operations.owylis_vce_Mean', 
                 'Operations.mou_owylisv_Mean', 'Operations.iwylis_vce_Mean', 'Operations.mou_iwylisv_Mean', 'Operations.peak_vce_Mean', 'Operations.peak_data_Mean', 
                 'Operations.mou_peak_vce_Mean', 'Operations.mou_peak_data_Mean', 'Operations.opk_vce_Mean', 'Operations.opk_data_Mean', 'Operations.mou_opk_vce_Mean', 
                 'Operations.mou_opk_data_Mean', 'Service.drop_blk_Mean', 'Service.attempt_Mean', 'Service.complete_Mean', 'Operations.callfwdv_Mean', 
                 'Operations.callwait_Mean', 'Customer.churn', 'Customer.months', 'Customer.uniqsubs', 'Customer.actvsubs', 'Product.new_cell', 
                 'Customer.crdlscod', 'Customer.asl_flag', 'Operations.totcalls', 'Operations.totmou', 'Billing.totrev', 'Billing.adjrev', 'Operations.adjmou', 
                 'Operations.adjqty','Billing.avgrev', 'Operations.avgmou', 'Operations.avgqty', 'Operations.avg3mou', 'Operations.avg3qty', 'Billing.avg3rev', 'Operations.avg6mou', 
                 'Operations.avg6qty', 'Billing.avg6rev', 'Customer.prizm_social_one', 'Customer.area', 'Product.dualband', 'Product.refurb_new', 
                 'Product.hnd_price', 'Customer.phones', 'Customer.models', 'Product.hnd_webcap', 'Customer.truck', 'Customer.rv', 'Customer.own_rent', 
                 'Customer.lor', 'Customer.dwlltype', 'Customer.marital', 'Customer.adults', 'Customer.infobase', 'Customer.income', 'Customer.numbcars', 
                 'Customer.HHstatin', 'Customer.dwllsize', 'Customer.forgntvl', 'Customer.ethnic', 'Customer.kid0_2', 'Customer.kid3_5', 'Customer.kid6_10', 
                 'Customer.kid11_15', 'Customer.kid16_17', 'Billing.creditcd', 'Product.eqpdays', 'Customer.Customer_ID')

# Creating Tables for export
Billing_info <- tele[,str_detect(names(tele),'Billing')]
Customer_info <- tele[,str_detect(names(tele),'Customer')]
Service_info <- tele[,str_detect(names(tele),'Service')]
CustServ_info <- tele[,str_detect(names(tele),'CustServ')]
Operations_info <- tele[,str_detect(names(tele),'Operations')]
Product_info <- tele[,str_detect(names(tele),'Product')]

# Adding Customer_ID Key
Billing_info <- cbind(Customer_info$Customer.Customer_ID, Billing_info)
CustServ_info <- cbind(Customer_info$Customer.Customer_ID, CustServ_info)
Product_info <- cbind(Customer_info$Customer.Customer_ID, Product_info)
Service_info <- cbind(Customer_info$Customer.Customer_ID, Service_info)
Operations_info <- cbind(Customer_info$Customer.Customer_ID, Operations_info)


# Writing CSV for SQL hosting

write_csv(Billing_info, "Billing_info.csv")
write_csv(Customer_info, "Customer_info.csv")
write_csv(Service_info, "Service_info.csv")
write_csv(CustServ_info, "CustServ_info.csv")
write_csv(Operations_info, "Operations_info.csv")
write_csv(Product_info, "Product_info.csv")