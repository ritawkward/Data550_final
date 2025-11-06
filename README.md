# Data550_final
# Data550 Final Project: Diabetes Health Indicators

This repository contains the final project for **DATA 550**, analyzing the 2015 Behavioral Risk Factor Surveillance System (BRFSS) Diabetes Health Indicators dataset.  
The goal of this project is to identify key demographic, behavioral, and clinical predictors of diabetes using logistic regression and machine learning.

---

## 📂 Repository Structure

Data550_final/
│
├── data/
│ └── diabetes_binary_health_indicators_BRFSS2015.csv
│
├── code/
│ ├── 01_data_clean.R # data import and cleaning
│ ├── 02_analysis.R # regression & ML modeling
│ └── 03_make_output.R # figures and tables
│
├── report/
│ ├── final_report.Rmd # main R Markdown report
│ └── report.html # rendered HTML report
│
├── Makefile # automation for building final report
└── README.md



---

## ⚙️ How to Reproduce the Analysis

1. Clone this repository:
   ```bash
   git clone git@github.com:ZJamn/Data550_final.git
   cd Data550_final



To generate the final report, simply run:

bash
Copy code
make report.html
This command will:

Run all scripts under the code/ directory

Render the R Markdown file into an HTML report inside /report/

📊 Project Components
Data cleaning: handled in code/01_data_clean.R

Main analysis: performed in code/02_analysis.R

Tables and figures: generated in code/03_make_output.R

Final report: integrated and rendered from report/final_report.Rmd

🧠 Data Source
Kaggle - Diabetes Health Indicators Dataset (BRFSS 2015)
The dataset contains over 250,000 survey responses with demographic, behavioral, and health status variables related to diabetes risk.

👩‍💻 Author
Jiamin Zhao
Rollins School of Public Health, Emory University
Email: jiamin.zhao@emory.edu
GitHub: ZJamn


---

## ⚙️`Makefile`

```makefile
# Makefile for DATA 550 Final Project
# Builds the final report by running all R scripts and rendering the R Markdown file

report.html: code/01_data_clean.R code/02_analysis.R code/03_make_output.R report/final_report.Rmd data/diabetes_binary_health_indicators_BRFSS2015.csv
	Rscript code/01_data_clean.R
	Rscript code/02_analysis.R
	Rscript code/03_make_output.R
	Rscript -e "rmarkdown::render('report/final_report.Rmd', output_file = 'report.html')"

clean:
	rm -f report/report.html
