## @knitr part1
tele <- read_csv("C:/Users/Jake/Downloads/Telecom_customer churn.csv")

Billing[which(is.na(tele$rev_Mean)),]$rev_Mean <- NA
Billing[which(is.na(tele$totmrc_Mean)),]$totmrc_Mean <- NA
Billing[which(is.na(tele$ovrrev_Mean)),]$ovrrev_Mean <- NA
Billing[which(is.na(tele$vceovr_Mean)),]$vceovr_Mean <- NA
Billing[which(is.na(tele$datovr_Mean)),]$datovr_Mean <- NA
Billing[which(is.na(tele$change_rev)),]$change_rev <- NA
Billing[which(is.na(tele$avg6rev)),]$avg6rev <- NA
Billing[which(is.na(tele$creditcd)),]$creditcd <- NA

Customer[which(is.na(tele$prizm_social_one)),]$prizm_social_one <- NA
Customer[which(is.na(tele$area)),]$area <- NA
Customer[which(is.na(tele$phones)),]$phones <- NA
Customer[which(is.na(tele$models)),]$models <- NA
Customer[which(is.na(tele$truck)),]$truck <- NA
Customer[which(is.na(tele$rv)),]$rv <- NA
Customer[which(is.na(tele$ownrent)),]$own_rent <- NA
Customer[which(is.na(tele$lor)),]$lor <- NA
Customer[which(is.na(tele$dwlltype)),]$dwlltype <- NA
Customer[which(is.na(tele$marital)),]$marital <- NA
Customer[which(is.na(tele$adults)),]$adults <- NA
Customer[which(is.na(tele$infobase)),]$infobase <- NA
Customer[which(is.na(tele$income)),]$income <- NA
Customer[which(is.na(tele$numbcars)),]$numbcars <- NA
Customer[which(is.na(tele$HHstatin)),]$HHStatin <- NA
Customer[which(is.na(tele$dwllsize)),]$dwllsize <- NA
Customer[which(is.na(tele$forgntvl)),]$forgntvl <- NA
Customer[which(is.na(tele$ethnic)),]$ethnic <- NA
Customer[which(is.na(tele$kid0_2)),]$kid0_2 <- NA
Customer[which(is.na(tele$kid3_5)),]$kid3_5 <- NA
Customer[which(is.na(tele$kid6_10)),]$kid6_10 <- NA
Customer[which(is.na(tele$kid11_15)),]$kid11_15 <- NA
Customer[which(is.na(tele$kid16_17)),]$kid16_17 <- NA

Operations[which(is.na(tele$mou_Mean)),]$mou_Mean <- NA
Operations[which(is.na(tele$da_Mean)),]$da_Mean <- NA
Operations[which(is.na(tele$ovrmou_Mean)),]$ovrmou_Mean <- NA
Operations[which(is.na(tele$roam_Mean)),]$roam_Mean <- NA
Operations[which(is.na(tele$change_mou)),]$change_mou <- NA
Operations[which(is.na(tele$avg6mou)),]$avg6mou <- NA
Operations[which(is.na(tele$avg6qty)),]$avg6qty <- NA

Product[which(is.na(tele$dualband)),]$dualband <- NA
Product[which(is.na(tele$refurb_new)),]$refurb_new <- NA
Product[which(is.na(tele$hnd_price)),]$hnd_price <- NA
Product[which(is.na(tele$hnd_webcap)),]$hnd_webcap <- NA
Product[which(is.na(tele$eqpdays)),]$eqpdays <- NA