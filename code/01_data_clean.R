# 01_data_clean.R
# Step 1: Load and clean the diabetes dataset

# Load necessary package
library(dplyr)

# Read in data
data <- read.csv("data/diabetes_binary_health_indicators_BRFSS2015.csv")

# Basic cleaning: remove NAs (if any)
clean_data <- na.omit(data)

# Optional: create a smaller sample for faster processing
set.seed(123)
clean_data <- clean_data %>% sample_n(min(10000, nrow(clean_data)))

# Save cleaned dataset to temporary object for later steps
save(clean_data, file = "data/clean_data.RData")

cat("✅ Data cleaning complete. Saved cleaned data to data/clean_data.RData\n")
