#########################################
# Downloading processed datasets into R #
#########################################

library(readr)  # to read stata dta files
library(haven)  # to read sas files



# Loading data ------------------------------------------------------------

# charitable data
filename.charitable <- "https://raw.githubusercontent.com/gsbDBI/ExperimentData/master/Charitable/ProcessedData/charitable_withdummyvariables.csv"
charitable <- read_csv(url(filename.charitable))

# mobilization data
temp <- tempfile()
download.file("https://raw.githubusercontent.com/gsbDBI/ExperimentData/master/Mobilization/ProcessedData/mobilization_with_unlisted.zip",temp)
mobilization <- read_csv(unz(temp, "mobilization_with_unlisted.csv"))
unlink(temp)

# secrecy data
filename.secrecy <- "https://raw.githubusercontent.com/gsbDBI/ExperimentData/master/Secrecy/ProcessedData/ct_ballotsecrecy_processed.csv"
secrecy <- read_csv(url(filename.secrecy))

# social data
filename.social <- "https://raw.githubusercontent.com/gsbDBI/ExperimentData/master/Social/ProcessedData/socialpressnofact.csv"
social <- read_csv(url(filename.social))

# welfare data
filename.welfare <- "https://raw.githubusercontent.com/gsbDBI/ExperimentData/master/Welfare/ProcessedData/welfarenolabel3.csv"
welfare <- read_csv(url(filename.welfare))

# IV data
filename.IV <- "IV Datasets/RawData/NEW7080.dta"
IVdataset <- read_dta(filename.IV)
colnames(IVdataset) <- c("AGE", "AGEQ", "v3", "EDUC", "ENOCENT", "ESOCENT", "v7", "v8",
                         "LWKLYWGE", "MARRIED", "MIDATL", "MT", "NEWENG", "v14", "v15",
                         "CENSUS", "v17", "QOB", "RACE", "SMSA", "SOATL", "v22", "v23",
                         "WNOCENT", "WSOCENT", "v26", "YOB")

# vouchers data
filename.vouchers <- "http://economics.mit.edu/files/1393"
vouchers <- read_sas(url(filename.vouchers))


# Saving data -------------------------------------------------------------

usethis::use_data(charitable, mobilization, secrecy,
                  social, welfare, IVdataset, vouchers,
                  overwrite = TRUE)


