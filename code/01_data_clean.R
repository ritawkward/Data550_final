# 01_data_clean.R
# Step 1: Load and clean the diabetes dataset

# ensure working directory is project root
setwd(dirname(sys.frame(1)$ofile))
setwd("..")
print(getwd())

# ensure script runs from project root
if (requireNamespace("rstudioapi", quietly = TRUE)) {
  setwd(dirname(rstudioapi::getSourceEditorContext()$path))
  setwd("..")
}

library(dplyr)

data <- read.csv("data/diabetes_binary_health_indicators_BRFSS2015.csv")
clean_data <- na.omit(data)
set.seed(123)
clean_data <- clean_data %>% sample_n(min(10000, nrow(clean_data)))

save_path <- file.path(getwd(), "data", "clean_data.RData")
save(clean_data, file = save_path)
cat("✅ Data cleaning complete. Saved cleaned data to:", save_path, "\n")
