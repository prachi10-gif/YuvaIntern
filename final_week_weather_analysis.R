# YuvaIntern Final Week - Live Weather Analysis
# Data captured: 06-Oct-2026

library(ggplot2)
library(dplyr)
library(caret)

current <- read.csv("live_weather_current_snapshot.csv")
forecast <- read.csv("live_weather_forecast_panel.csv")
forecast$date <- as.Date(forecast$date)

# Data cleaning
current <- current %>%
  distinct() %>%
  mutate(city = trimws(city))
forecast <- forecast %>%
  distinct() %>%
  mutate(city = trimws(city))

summary(current)
summary(forecast)
colSums(is.na(current))
colSums(is.na(forecast))

# Correlation test
cor.test(forecast$min_temp_c, forecast$max_temp_c,
         method="pearson")

# ANOVA
anova_model <- aov(max_temp_c ~ city, data=forecast)
summary(anova_model)

# Time-based holdout: last 2 observations per city
train <- forecast %>% group_by(city) %>%
  arrange(date) %>% slice_head(n=n()-2) %>% ungroup()
test <- forecast %>% group_by(city) %>%
  arrange(date) %>% slice_tail(n=2) %>% ungroup()

# Regression model
model <- lm(max_temp_c ~ min_temp_c + city, data=train)
summary(model)

# Prediction and metrics
test$predicted_max <- predict(model, newdata=test)
MAE <- mean(abs(test$max_temp_c - test$predicted_max))
RMSE <- sqrt(mean((test$max_temp_c - test$predicted_max)^2))
R2 <- cor(test$max_temp_c, test$predicted_max)^2

MAE
RMSE
R2

# Diagnostics
par(mfrow=c(2,2))
plot(model)

# Visualization
ggplot(forecast, aes(date, max_temp_c, color=city)) +
  geom_line() + geom_point() +
  labs(title="Live Forecast Panel",
       x="Date", y="Maximum Temperature (°C)")
