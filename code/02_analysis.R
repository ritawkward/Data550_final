# 02_analysis.R
# Step 2: Model the relationship between predictors and diabetes status

library(dplyr)
library(ggplot2)

# ---- Load cleaned data ----
clean_data <- read.csv("data/clean_data.csv")
cat("✅ Cleaned data loaded successfully.\n")

# ---- Define outcome and predictors ----
clean_data <- clean_data %>%
  mutate(Diabetes_binary = as.factor(Diabetes_binary))

# ---- Logistic Regression ----
logit_model <- glm(Diabetes_binary ~ Age + BMI + PhysActivity + HighBP,
                   data = clean_data, family = binomial())

summary(logit_model)

# Save model summary
sink("output/model_summary.txt")
cat("=== Logistic Regression Model ===\n")
print(summary(logit_model))
sink()

cat("✅ Model summary saved to output/model_summary.txt\n")

