# 03_make_output.R
library(ggplot2)

clean_data <- read.csv("data/clean_data.csv")

# Example figure: diabetes prevalence by age
fig <- ggplot(clean_data, aes(x = Age, fill = Diabetes_binary)) +
  geom_bar(position = "fill") +
  labs(y = "Proportion", title = "Diabetes Prevalence by Age") +
  theme_minimal()

ggsave("output/diabetes_by_age.png", fig, width = 6, height = 4)
cat("✅ Figure saved to output/diabetes_by_age.png\n")

