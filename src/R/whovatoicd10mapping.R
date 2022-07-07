### WHO VA Record codes to ICD mapping 

setwd("/Users/bryangascon/Desktop/2022 CREMs Summer Research/Jha Lab/sam_clark_comsa/COMSA Adult COD Analysis 2022-03/results")

library(cghrCodes)

# Load dataset of WHO VA codes -> ICD code mapping 
WHOVAtoICD <- read.csv("whovatoicd10mapping.csv")

# Expand the code ranges as a dataframe 
exICD10data <- expandICD10Data(WHOVAtoICD, icd10Column="icd_range_codes_2016")

# Expand the icd10 column codes and ranges as a vector
exICD10 <- expandICD10(WHOVAtoICD$icd_range_codes_2016)

# Collapse the icd10 column codes and ranges as vector
coICD10 <- collapseICD10(WHOVAtoICD$icd_range_codes_2016)

# Remove leading VAs- from WHO VA codes 
exICD10data$WHO_VA_code_num <- gsub("VAs-","", exICD10data$WHO_VA_code)

# Export file
write.csv(exICD10data, file="icd10towhova2016.csv", row.names = FALSE)