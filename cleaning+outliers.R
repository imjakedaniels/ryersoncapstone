
# rev_Mean, mou_Mean, totmrc_Mean, da_mean, ovrmou_Mean, overrev_Mean, vceover_Mean, datover_Mean, roam_Mean NAs: 357
summary(tele[,1:9])

# observing
melt(tele[,1:9]) %>%
  ggplot(aes(x = value)) + 
  stat_density() + 
  facet_wrap(~variable, scales = "free")

plot(tele$rev_Mean)
plot(tele$rev_Mean)
plot(tele$mou_Mean)
plot(tele$totmrc_Mean)
plot(tele$da_Mean)
plot(tele$ovrmou_Mean)
plot(tele$ovrrev_Mean)
plot(tele$vceovr_Mean)
plot(tele$datovr_Mean)
plot(tele$roam_Mean)

# extreme values detected, creating new set called tele_clean
tele_clean <- tele

outlier_index <- which(tele_clean$rev_Mean > 3000)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$da_Mean > 100)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$ovrmou_Mean > 2000)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$datovr_Mean > 200)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$roam_Mean > 500)
tele_clean <- tele_clean[-outlier_index,]

# chose to remove rows since all customers missing same info
na_index <- which(is.na(tele_clean$rev_Mean))
tele_clean <- tele_clean[-na_index,]


# change_mou & change_rev NAs: 534
summary(tele_clean[,10:11])

# observing
melt(tele_clean[,10:11]) %>%
  ggplot(aes(x = value)) + 
  stat_density() + 
  facet_wrap(~variable, scales = "free")

plot(tele_clean$change_mou)
plot(tele_clean$change_rev)

# extreme values detected
outlier_index <- which(tele_clean$change_mou > 4000)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$change_rev > 1000)
tele_clean <- tele_clean[-outlier_index,]

# removing NA
which(is.na(tele_clean$change_mou)) == which(is.na(tele_clean$change_rev))
na_index <- which(is.na(tele_clean$change_mou))
tele_clean <- tele_clean[-na_index,]



# Non NA numerics: looking at distribution and outliers in batches of ~10 vars
summary(tele_clean[,12:20])

melt(tele_clean[,12:20]) %>%
  ggplot(aes(x = value)) + 
  stat_density() + 
  facet_wrap(~variable, scales = "free")

plot(tele_clean$drop_vce_Mean)
plot(tele_clean$drop_dat_Mean)
plot(tele_clean$blck_vce_Mean)
plot(tele_clean$blck_dat_Mean)
plot(tele_clean$unan_vce_Mean)
plot(tele_clean$unan_dat_Mean)
plot(tele_clean$plcd_vce_Mean)
plot(tele_clean$plcd_dat_Mean)
plot(tele_clean$recv_vce_Mean)

# extreme value removal
outlier_index <- which(tele_clean$drop_dat_Mean > 40)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$blck_dat_Mean > 20)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$unan_dat_Mean > 20)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$plcd_dat_Mean > 400)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$plcd_vce_Mean > 2000)
tele_clean <- tele_clean[-outlier_index,]


# Non NA numerics: looking at distribution and outliers in batches of ~10 vars
summary(tele_clean[,21:30])

melt(tele_clean[,21:30]) %>%
  ggplot(aes(x = value)) + 
  stat_density() + 
  facet_wrap(~variable, scales = "free")

plot(tele_clean$recv_sms_Mean)
plot(tele_clean$comp_vce_Mean)
plot(tele_clean$comp_dat_Mean)
plot(tele_clean$custcare_Mean)
plot(tele_clean$ccrndmou_Mean)
plot(tele_clean$cc_mou_Mean)
plot(tele_clean$inonemin_Mean)
plot(tele_clean$threeway_Mean)
plot(tele_clean$mou_cvce_Mean)
plot(tele_clean$mou_cdat_Mean)

# extreme value cleaning

outlier_index <- which(tele_clean$recv_sms_Mean > 95)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$custcare_Mean >300)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$ccrndmou_Mean > 400)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$inonemin_Mean > 1600)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$threeway_Mean > 40)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$mou_cdat_Mean > 1000)
tele_clean <- tele_clean[-outlier_index,]


# Non NA numerics: looking at distribution and outliers in batches of ~10 vars
summary(tele_clean[,31:40])

melt(tele_clean[,31:40]) %>%
  ggplot(aes(x = value)) + 
  stat_density() + 
  facet_wrap(~variable, scales = "free")

plot(tele_clean$mou_rvce_Mean)
plot(tele_clean$owylis_vce_Mean)
plot(tele_clean$mouowylisv_Mean)
plot(tele_clean$iwylis_vce_Mean)
plot(tele_clean$mouiwylisv_Mean)
plot(tele_clean$peak_vce_Mean)
plot(tele_clean$peak_dat_Mean)
plot(tele_clean$mou_peav_Mean)
plot(tele_clean$mou_pead_Mean)
plot(tele_clean$opk_vce_Mean)

# extreme value cleaning
outlier_index <- which(tele_clean$mou_rvce_Mean > 2200)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$owylis_vce_Mean > 600)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$mouowylisv_Mean > 750)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$mouiwylisv_Mean > 900)
tele_clean <- tele_clean[-outlier_index,]



summary(tele_clean[,41:50])

melt(tele_clean[,41:50]) %>%
  ggplot(aes(x = value)) + 
  stat_density() + 
  facet_wrap(~variable, scales = "free")

plot(tele_clean$opk_dat_Mean)
plot(tele_clean$mou_opkv_Mean)
plot(tele_clean$mou_opkd_Mean)
plot(tele_clean$drop_blk_Mean)
plot(tele_clean$attempt_Mean)
plot(tele_clean$complete_Mean)
plot(tele_clean$callfwdv_Mean)
plot(tele_clean$callwait_Mean)

# extreme value cleaning
outlier_index <- which(tele_clean$opk_dat_Mean > 150)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$mou_opkd_Mean > 400)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$drop_blk_Mean > 300)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$callfwdv_Mean > 20)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$callwait_Mean > 100)
tele_clean <- tele_clean[-outlier_index,]

# converting churn into logical
tele_clean$churn <- ifelse(tele_clean$churn == 1, "TRUE", "FALSE") %>% as.logical()



summary(tele_clean[,51:67])

melt(tele_clean[,51:67]) %>%
  ggplot(aes(x = value)) + 
  stat_density() + 
  facet_wrap(~variable, scales = "free")

plot(tele_clean$uniqsubs)
plot(tele_clean$actvsubs)
plot(tele_clean$totcalls)
plot(tele_clean$totmou)
plot(tele_clean$totrev)
plot(tele_clean$adjrev)
plot(tele_clean$adjmou)
plot(tele_clean$adjqty)
plot(tele_clean$avgrev)
plot(tele_clean$avgmou)
plot(tele_clean$avgqty)
plot(tele_clean$avg3mou)
plot(tele_clean$avg3qty)
plot(tele_clean$avg3rev)

# extreme values
outlier_index <- which(tele_clean$uniqsubs > 100)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$avgrev > 600)
tele_clean <- tele_clean[-outlier_index,]

# dropping crclscod because it is useless
tele_clean$crclscod <- NULL

# checking categoricals
ggplot() +
  geom_bar(aes(x=tele_clean$new_cell))

ggplot() +
  geom_bar(aes(x=tele_clean$asl_flag))

# new_cell majority is ~2/3 Unknown and asl_flag is dominantly No, will still keep new_cell and convert asl_flag to lazy factor
tele_clean$new_cell <- as.factor(tele_clean$new_cell)
tele_clean$asl_flag <- ifelse(tele_clean$asl_flag == "Y", 1, 0) %>% as.factor()



# avg6 NAs: 2761
summary(tele_clean[,68:70])

# examining shapes, extreme values
melt(tele_clean[,68:70]) %>%
  ggplot(aes(x = value)) + 
  stat_density() + 
  facet_wrap(~variable, scales = "free")

plot(tele_clean$avg6mou)
plot(tele_clean$avg6qty)
plot(tele_clean$avg6rev)

# we should have this data, opting to put median value in to keep customers to avoid extreme value's impact on mean
na_index <- which(is.na(tele_clean$avg6mou))
tele_clean[na_index,]$avg6mou <- median(tele_clean$avg6mou, na.rm = T)

na_index <- which(is.na(tele_clean$avg6qty))
tele_clean[na_index,]$avg6qty <- median(tele_clean$avg6qty, na.rm = T)

na_index <- which(is.na(tele_clean$avg6rev))
tele_clean[na_index,]$avg6rev <- median(tele_clean$avg6rev, na.rm = T)



# przm_social_one NAs: 7322
unique(tele_clean$prizm_social_one)

# clarifying the text and setting NA to unknown
tele_clean[which(tele_clean$prizm_social_one == "S"),]$prizm_social_one <- "Suburban"
tele_clean[which(tele_clean$prizm_social_one == "U"),]$prizm_social_one <- "Urban"
tele_clean[which(tele_clean$prizm_social_one == "T"),]$prizm_social_one <- "Town & Country"
tele_clean[which(tele_clean$prizm_social_one == "C"),]$prizm_social_one <- "City"
tele_clean[which(tele_clean$prizm_social_one == "R"),]$prizm_social_one <- "Rural"
tele_clean[which(is.na(tele_clean$prizm_social_one)),]$prizm_social_one <- "Unknown"

tele_clean$prizm_social_one <- as.factor(tele_clean$prizm_social_one)



# area NAs: 40
unique(tele_clean$area)

# choosing to drop customers with missing info
na_index <- which(is.na(tele_clean$area))
tele_clean <- tele_clean[-na_index,]

# do i make this a factor?
tele_clean$area <- as.factor(tele_clean$area)



#dualband NA: 1
ggplot() +
  geom_bar(aes(x=tele_clean$dualband))

# removing this
na_index <- which(is.na(tele_clean$dualband))
tele_clean <- tele_clean[-na_index,]

tele_clean$dualband <- as.factor(tele_clean$dualband)


}
# refurb_new
ggplot() +
  geom_bar(aes(x=tele_clean$refurb_new))

# making into factor
tele_clean$refurb_new <- ifelse(tele_clean$refurb_new == "R", 1, 0) %>% as.factor()



summary(tele_clean[,74:76])

melt(tele_clean[,74:76]) %>%
  ggplot(aes(x = value)) + 
  stat_density() + 
  facet_wrap(~variable, scales = "free")

plot(tele_clean$hnd_price)
plot(tele_clean$phones)
plot(tele_clean$models)

# extreme values
outlier_index <- which(tele_clean$phones > 20)
tele_clean <- tele_clean[-outlier_index,]

outlier_index <- which(tele_clean$models > 10)
tele_clean <- tele_clean[-outlier_index,]



# hnd_price
summary(tele_clean$hnd_price)

# subbing median for missing values
na_index <- which(is.na(tele_clean$hnd_price))
tele_clean[na_index,]$hnd_price <- median(tele_clean$hnd_price, na.rm = T)



# hdn_webcap NA: 10027
unique(tele_clean$hnd_webcap)

# visualizing spread
ggplot() +
  geom_bar(aes(x=tele_clean$hnd_webcap))

# already an UNKW column, going to give NA that value
na_index <- which(is.na(tele_clean$hnd_webcap))
tele_clean[na_index,]$hnd_webcap <- "UNKW"

tele_clean$hnd_webcap <- as.factor(tele_clean$hnd_webcap)



# truck, rv NA: 1710
summary(tele_clean[,78:79])
plot(x=tele_clean$truck)
plot(x=tele_clean$rv)

# dropping from dataset, not important to question
tele_clean$truck <- NULL
tele_clean$rv <- NULL



# ownrent : 33352 NA
length(which(is.na(tele_clean$ownrent)))
unique(tele_clean$ownrent)

# creating an U column, going to give NA that value
na_index <- which(is.na(tele_clean$ownrent))
tele_clean[na_index,]$ownrent <- "UNKW"

# visualizing spread
ggplot() +
  geom_bar(aes(x=tele_clean$ownrent))

# hardly any renters so I can actually drop this completely for model
tele_clean$ownrent <- NULL



# lor (length of residence) NA: 29,877
summary(tele_clean$lor)

# I presume this is in years and will be an indicator
ggplot() +
  geom_histogram(aes(x = tele_clean$lor)) + 
  theme_classic()
range(tele_clean$lor, na.rm = T)

# replacing median into NA
na_index <- which(is.na(tele_clean$lor))
tele_clean[na_index,]$lor <- median(tele_clean$lor, na.rm = T)



# dwlltype NA: 31578
length(which(is.na(tele_clean$dwlltype)))
unique((tele_clean$dwlltype))

# visualizing
ggplot() +
  geom_bar(aes(x=tele_clean$dwlltype))

# giving it Unknown Col
na_index <- which(is.na(tele_clean$dwlltype))
tele_clean[na_index,]$dwlltype <- "U"

tele_clean$dwlltype <- as.factor(tele_clean$dwlltype)



# marital NA: 1717
length(which(is.na(tele_clean$marital)))
unique(tele_clean$marital)

ggplot() +
  geom_bar(aes(x=tele_clean$marital))

# already an UNKNOWN column going to give NA that value
na_index <- which(is.na(tele_clean$marital))
tele_clean[na_index,]$marital <- "U"

# make factor
tele_clean$marital <- as.factor(tele_clean$marital)



# adults NA: 22,767
summary(tele_clean$adults)
range(tele_clean$adults, na.rm = T)

# keep the na but convert column to categorical
tele_clean$adults <- cut(tele_clean$adults, c(0,1,2,3,4,5,6), labels = c("One", "Two","Three","Four","Five","Six"))

levels(tele_clean$adults) <- c(levels(tele_clean$adults), "Unknown")
na_index <- which(is.na(tele_clean$adults))
tele_clean[na_index,]$adults <- "Unknown"

tele_clean$adults <- as.factor(tele_clean$adults)

ggplot() +
  geom_bar(aes(x=tele_clean$adults))



# infobase
length(which(is.na(tele_clean$infobase)))
unique(tele_clean$infobase)

# removing since context is beyond scope of paper
tele_clean$infobase <- NULL



# income (estimated) NAs: 25169
summary(tele_clean$income)
range(tele_clean$income, na.rm=T)

# factoring into levels
tele_clean$income <- cut(tele_clean$income, c(0,1,2,3,4,5,6,7,8,9), labels = c("One", "Two","Three","Four","Five","Six", "Seven", "Eight", "Nine"))

# adding Unknown category for NA
levels(tele_clean$income) <- c(levels(tele_clean$income), "Unknown")
na_index <- which(is.na(tele_clean$income))
tele_clean[na_index,]$income <- "Unknown"

tele_clean$income <- as.factor(tele_clean$income)

plot(tele_clean$income)



# numbcars NAs: 48854
summary(tele_clean$numbcars)

# factoring into levels
tele_clean$numbcars <- cut(tele_clean$numbcars, c(0,1,2,3), labels = c("One", "Two","Three"))

# adding Unknown category for NA
levels(tele_clean$numbcars) <- c(levels(tele_clean$numbcars), "Unknown")
na_index <- which(is.na(tele_clean$numbcars))
tele_clean[na_index,]$numbcars <- "Unknown"

plot(tele_clean$numbcars)



# HHstatin NAs: 37511
unique(tele_clean$HHstatin)

# beyond the scope of this project, dropping the column
tele_clean$HHstatin <- NULL



# dwllsize NAs: 37511
unique(tele_clean$dwllsize)

# visualize
tele_clean %>%
  select(dwllsize) %>%
  group_by(dwllsize) %>%
  ggplot() +
  geom_bar(aes(x=dwllsize))

# data is scarce and lacks variation, going to drop
tele_clean$dwllsize <- NULL



#forgntvl NAs: 1717
summary(tele_clean$forgntvl)

#let's assume if we dont know forgntvl it is 0 since a majority is 0 already
na_index <- which(is.na(tele_clean$forgntvl))
tele_clean[na_index,]$forgntvl <- 0

hist(tele_clean$forgntvl)

tele_clean$forgntvl<- as.factor(tele_clean$forgntvl)



# ethnic (Ethnicity roll-up code) NA: 1717
length(which(is.na(tele_clean$ethnic)))

unique(tele_clean$ethnic)

#visualize
ggplot() +
  geom_bar(aes(x=tele_clean$ethnic))

#could be valuable... but I cannot translate the results without a decoder, going to drop
tele_clean$ethnic <- NULL



# KIDS NAs 1717
unique(tele_clean$kid0_2)
length(which(is.na(tele_clean$kid0_2)))
length(which(is.na(tele_clean$kid3_5)))
length(which(is.na(tele_clean$kid6_10)))
length(which(is.na(tele_clean$kid11_15)))
length(which(is.na(tele_clean$kid16_17)))

which(is.na(tele_clean$kid0_2)) == which(is.na(tele_clean$kid11_15))

# visualize
tele_clean %>%
  select(kid0_2) %>%
  group_by(kid0_2) %>%
  ggplot() +
  geom_bar(aes(x=kid0_2))

# U is unknown, Y is Yes so setting all to unknown
na_index <- which(is.na(tele_clean$kid0_2))
tele_clean[na_index,85:89] <- "U"

# making into factor
tele_clean$kid0_2 <- ifelse(tele_clean$kid0_2 == "Y", 1, 0) %>% as.factor()
tele_clean$kid3_5 <- ifelse(tele_clean$kid3_5 == "Y", 1, 0) %>% as.factor()
tele_clean$kid6_10 <- ifelse(tele_clean$kid6_10 == "Y", 1, 0) %>% as.factor()
tele_clean$kid11_15 <- ifelse(tele_clean$kid11_15 == "Y", 1, 0) %>% as.factor()
tele_clean$kid16_17 <- ifelse(tele_clean$kid16_17 == "Y", 1, 0) %>% as.factor()



# creditcd NA/; 1717

# same columns as kids
unique(tele_clean$creditcd)

# visualize
ggplot() +
  geom_bar(aes(x=tele_clean$creditcd))

# give No
na_index <- which(is.na(tele_clean$creditcd))
tele_clean[na_index,]$creditcd <- "N"

tele_clean$creditcd <- ifelse(tele_clean$creditcd == "Y", 1, 0) %>% as.factor()

names(tele_clean) <- c('Billing.rev_Mean', 'Usage.mou_Mean', 'Billing.totmrc_Mean', 'Usage.da_Mean', 'Usage.ovrmou_Mean', 
                       'Billing.ovrrev_Mean','Billing.vceovr_Mean', 'Billing.datovr_Mean', 'Usage.roam_Mean', 'Usage.change_mou', 
                       'Billing.change_rev', 'Service.drop_vce_Mean', 'Service.drop_data_Mean', 'Service.blck_vce_Mean', 
                       'Service.blck_data_Mean', 'Service.unan_vce_Mean', 'Service.unan_data_Mean', 'Service.plcd_vcd_Mean', 
                       'Service.plcd_data_Mean', 'Service.recv_vce_Mean', 'Service.recv_sms_Mean', 'Usage.comp_vce_Mean', 
                       'Usage.comp_data_Mean', 'CustServ.custcare_Mean', 'CustServ.ccrndmou_Mean', 'CustServ.cc_mou_Mean', 
                       'Usage.inonemin_Mean', 'Usage.threeway_Mean', 'Usage.mou_compvce_Mean', 'Usage.mou_compdata_Mean', 
                       'Usage.mou_rvce_Mean', 'Usage.owylis_vce_Mean', 'Usage.mou_owylisv_Mean', 'Usage.iwylis_vce_Mean', 
                       'Usage.mou_iwylisv_Mean', 'Usage.peak_vce_Mean', 'Usage.peak_data_Mean', 'Usage.mou_peak_vce_Mean', 
                       'Usage.mou_peak_data_Mean', 'Usage.opk_vce_Mean', 'Usage.opk_data_Mean', 'Usage.mou_opk_vce_Mean', 
                       'Usage.mou_opk_data_Mean', 'Service.drop_blk_Mean', 'Service.attempt_Mean', 'Service.complete_Mean', 
                       'Usage.callfwdv_Mean', 'Usage.callwait_Mean', 'Customer.churn', 'Customer.months', 'Customer.uniqsubs', 
                       'Customer.actvsubs', 'Product.new_cell', 'Customer.asl_flag', 'Usage.totcalls', 'Usage.totmou', 
                       'Billing.totrev', 'Billing.adjrev', 'Usage.adjmou', 'Usage.adjqty', 'Billing.avgrev', 'Usage.avgmou', 
                       'Usage.avgqty', 'Usage.avg3mou', 'Usage.avg3qty', 'Billing.avg3rev', 'Usage.avg6mou', 'Usage.avg6qty', 
                       'Billing.avg6rev', 'Customer.prizm_social_one', 'Customer.area', 'Product.dualband', 'Product.refurb_new', 
                       'Product.hnd_price', 'Customer.phones', 'Customer.models', 'Product.hnd_webcap', 'Custerom.lor', 
                       'Customer.dwlltype', 'Customer.marital', 'Customer.adults', 'Customer.income', 'Customer.numbcars', 
                       'Customer.forgntvl', 'Customer.kid0_2', 'Customer.kid3_5', 'Customer.kid6-10', 'Customer.kid11_15', 
                       'Customer.kid16_17', 'Billing.creditcd', 'Product.eqpdays', 'Customer.Customer_ID')