# Iris Statistical Analysis and Predictive Modeling
library(caret)
library(nnet)
library(ggplot2)

data(iris)
str(iris)
summary(iris)
colSums(is.na(iris))

# Hypothesis testing
cor.test(iris$Sepal.Length, iris$Petal.Length, method="pearson")
shapiro.test(iris$Sepal.Length)
shapiro.test(iris$Sepal.Width)
shapiro.test(iris$Petal.Length)
shapiro.test(iris$Petal.Width)

anova_model <- aov(Petal.Length ~ Species, data=iris)
summary(anova_model)

# Visualization
ggplot(iris, aes(Petal.Length, Petal.Width, color=Species)) +
  geom_point(size=2.5) +
  labs(title="Petal Length vs Petal Width")

# 80/20 stratified split
set.seed(42)
idx <- createDataPartition(iris$Species, p=0.80, list=FALSE)
train <- iris[idx, ]
test <- iris[-idx, ]

# Multinomial logistic regression
model <- multinom(Species ~ Sepal.Length + Sepal.Width +
                  Petal.Length + Petal.Width,
                  data=train, trace=FALSE)

# 5-fold cross-validation
ctrl <- trainControl(method="cv", number=5, savePredictions="final")
set.seed(42)
cv_model <- train(Species ~ Sepal.Length + Sepal.Width +
                  Petal.Length + Petal.Width,
                  data=train, method="multinom",
                  trControl=ctrl, trace=FALSE)
cv_model

# Test evaluation
pred <- predict(model, newdata=test)
cm <- confusionMatrix(pred, test$Species)
cm
mean(pred == test$Species)

# Diagnostics
prob <- predict(model, newdata=test, type="probs")
head(prob)
which(pred != test$Species)
