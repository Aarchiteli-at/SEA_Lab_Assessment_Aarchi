# -------------------------------
# SEA Lab Assessment - COVID-19 Dataset Analysis
# Updated version: See plots & save PDFs
# -------------------------------

# Load libraries
library(ggplot2)
library(dplyr)

# Set working directory
setwd("C:/Users/aarch/OneDrive/Desktop/SEA DS Lab/SEA_Lab_Assessment_Aarchi")

# Load CSV
data <- read.csv("data/country_wise_latest.csv")

# View first few rows
head(data)
str(data)
summary(data)

# -------------------------------
# 1️⃣ Histogram: Confirmed cases
# -------------------------------
hist_confirmed <- ggplot(data, aes(x = Confirmed)) +
  geom_histogram(binwidth = 5000, fill = "skyblue", color = "black") +
  labs(title = "Histogram of Confirmed Cases", x = "Confirmed Cases", y = "Frequency") +
  theme_minimal()

# Show plot in RStudio
print(hist_confirmed)

# Save plot as PDF
ggsave("output/hist_confirmed.pdf", plot = hist_confirmed, width = 10, height = 6)

# -------------------------------
# 2️⃣ Histogram: Deaths
# -------------------------------
hist_deaths <- ggplot(data, aes(x = Deaths)) +
  geom_histogram(binwidth = 500, fill = "lightgreen", color = "black") +
  labs(title = "Histogram of Deaths", x = "Deaths", y = "Frequency") +
  theme_minimal()

print(hist_deaths)
ggsave("output/hist_deaths.pdf", plot = hist_deaths, width = 10, height = 6)

# -------------------------------
# 3️⃣ Top 20 countries by Confirmed cases
# -------------------------------
top20_confirmed <- data %>%
  arrange(desc(Confirmed)) %>%
  slice(1:20)

bar_top20 <- ggplot(top20_confirmed, aes(x = reorder(Country.Region, Confirmed), y = Confirmed)) +
  geom_bar(stat = "identity", fill = "orange") +
  labs(title = "Top 20 Countries by Confirmed Cases", x = "Country", y = "Confirmed Cases") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

print(bar_top20)
ggsave("output/bar_top20.pdf", plot = bar_top20, width = 12, height = 6)

# -------------------------------
# 4️⃣ Scatter plot: Confirmed vs Deaths
# -------------------------------
scatter_confirmed_deaths <- ggplot(data, aes(x = Confirmed, y = Deaths)) +
  geom_point(color = "red", alpha = 0.6) +
  labs(title = "Confirmed vs Deaths", x = "Confirmed Cases", y = "Deaths") +
  theme_minimal()

print(scatter_confirmed_deaths)
ggsave("output/scatter_confirmed_deaths.pdf", plot = scatter_confirmed_deaths, width = 10, height = 6)

# -------------------------------
# 5️⃣ Bar plot: Number of countries per WHO region
# -------------------------------
bar_who_region <- ggplot(data, aes(x = WHO.Region)) +
  geom_bar(fill = "purple") +
  labs(title = "Number of Countries per WHO Region", x = "WHO Region", y = "Count") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

print(bar_who_region)
ggsave("output/bar_who_region.pdf", plot = bar_who_region, width = 10, height = 6)

# -------------------------------
# Done
# -------------------------------
print("All plots displayed in RStudio and saved as PDFs in the 'output' folder.")

