# Statistical Analysis & Predictive Modeling Using R

## 📌 Project Overview

This project was completed as part of a **Data Analytics / R Statistical Modeling internship task**. The objective is to perform statistical analysis, hypothesis testing, and predictive modeling using the publicly available **Iris dataset**.

The project demonstrates a complete data science workflow, starting from exploratory analysis and statistical testing to model development, cross-validation, performance evaluation, and interpretation.

## 🎯 Objectives

- Explore and understand the dataset
- Perform descriptive and exploratory statistical analysis
- Conduct hypothesis testing
- Analyze correlations and distribution assumptions
- Build a predictive classification model
- Apply train-test splitting and cross-validation
- Evaluate model performance using appropriate metrics
- Perform model diagnostics
- Identify potential improvements

## 📊 Dataset

The **Iris dataset** contains 150 observations belonging to three flower species:

- Setosa
- Versicolor
- Virginica

### Features

| Feature | Description |
|---|---|
| Sepal.Length | Sepal length in cm |
| Sepal.Width | Sepal width in cm |
| Petal.Length | Petal length in cm |
| Petal.Width | Petal width in cm |
| Species | Target variable |

## 🛠️ Technologies Used

- **R**
- ggplot2
- caret
- nnet
- Statistical hypothesis testing
- Multinomial Logistic Regression
- Cross-validation

## 🔬 Statistical Analysis

The following statistical techniques were applied:

- Pearson correlation test
- Shapiro-Wilk normality test
- One-way ANOVA
- Descriptive statistics
- Exploratory data visualization

The analysis identified strong relationships between flower measurements and significant differences in petal length across species.

## 🤖 Predictive Modeling

A **Multinomial Logistic Regression** model was developed to predict flower species.

### Model Workflow

```text
Dataset
   ↓
Data Exploration
   ↓
Statistical Testing
   ↓
80/20 Train-Test Split
   ↓
Data Standardization
   ↓
Multinomial Logistic Regression
   ↓
5-Fold Cross-Validation
   ↓
Model Evaluation
   ↓
Diagnostics & Interpretation
```

## 📈 Model Performance

| Metric | Result |
|---|---:|
| Test Accuracy | **93.3%** |
| 5-Fold CV Accuracy | **95.3%** |

A **confusion matrix**, precision, recall, and F1-score were used to evaluate classification performance.

## 📊 Visualizations

The project includes:

1. Petal Length vs Petal Width scatter plot
2. Correlation matrix
3. Confusion matrix
4. Cross-validation accuracy chart
5. Classification confidence diagnostic
6. R code screenshot
7. R output screenshot

## 📁 Repository Structure

```text
YuvaIntern/
│
├── Prachi_Gupta_R_Statistical_Analysis_Predictive_Modeling.docx
├── iris_predictive_model.R
├── iris_predictive_model_dataset.csv
│
├── 01_iris_scatter.png
├── 02_correlation.png
├── 03_confusion_matrix.png
├── 04_cv_scores.png
├── 05_confidence_diagnostic.png
├── 06_R_code_screenshot.png
└── 07_R_output_screenshot.png
```

## 💡 Key Findings

- Petal measurements provide strong separation between Iris species.
- Sepal length and petal length show a strong positive correlation.
- Petal length differs significantly across the three species.
- The classification model achieved high predictive accuracy.
- Cross-validation confirmed that the model performs consistently across different folds.

## 🚀 Future Improvements

The project can be further improved by:

- Comparing Random Forest, SVM, and Decision Tree models
- Performing feature selection
- Using repeated cross-validation
- Evaluating probability calibration
- Testing the model on an independent dataset
- Applying hyperparameter tuning

## 👩‍💻 Author

**Prachi Gupta**

B.Tech – Information Technology  
Oriental Institute of Science and Technology  
RGPV University

---

⭐ This project demonstrates the practical application of **statistics, machine learning, R programming, and data visualization** in a complete predictive analytics workflow.
