# 01_data_clean.R
# Step 1: Load and clean the diabetes dataset

# --- Force working directory to project root ---
setwd("~/Desktop/Data550_final")
cat("📁 Working directory set to:", getwd(), "\n")

# --- Load necessary package ---
library(dplyr)

# --- Read in data ---
data <- read.csv("data/diabetes_binary_health_indicators_BRFSS2015.csv")

# --- Basic cleaning: remove NAs (if any) ---
clean_data <- na.omit(data)

# --- Optional: create a smaller sample for faster processing ---
set.seed(123)
clean_data <- clean_data %>% sample_n(min(10000, nrow(clean_data)))

# --- Save cleaned dataset to /data folder ---
save_path <- file.path("data", "clean_data.RData")
save(clean_data, file = save_path)
cat("✅ Data cleaning complete. Saved cleaned data to:", normalizePath(save_path), "\n")
