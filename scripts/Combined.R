# Load Dataset
df <- read.csv("2015_original_dataset.csv")

# # Ensure output directories exist
dir.create("assets/HistogramPlots", recursive = TRUE, showWarnings = FALSE)
dir.create("assets/ScatterPlots", recursive = TRUE, showWarnings = FALSE)

# Data Wrangling - Renaming Columns for clarity
colnames(df)[3] <- "HappRank"       # Happiness Rank
colnames(df)[4] <- "HappScore"      # Happiness Score
colnames(df)[5] <- "StdError"       # Standard Error
colnames(df)[6] <- "GDPperCapita"   # Economy (GDP Per Capita)
colnames(df)[8] <- "LifeExpectancy" # Health (Life Expectancy)
colnames(df)[10] <- "GovtTrust"     # Trust (Government Corruption)
colnames(df)[12] <- "Dystopia"      # Dystopia Residual


top60 <- head(df[order(df$GDPperCapita, decreasing = TRUE), ], 60)
bottom60 <- tail(df[order(df$GDPperCapita, decreasing = TRUE), ], 60)

h <- df$`HappScore` 
h1 <- top60$`HappScore` 
h2 <- bottom60$`HappScore` 

png("assets/HistogramPlots/totalHistogram.png", width = 800, height = 600)

# Histogram using frequency (default)
h_hist <- hist(h,
     breaks = 15,
     col = "lightblue",
     main = "Histogram of Happiness Score (Frequency) for World Happiness Ranking dataset",
     xlab = "Happiness Score",
     ylab = "Frequency",
     ylim = c(0, 30.0),
     xlim = c(2.0, 8.0)
)

# Create x-values for the curve(top60)
x <- seq(min(h, na.rm = TRUE), max(h, na.rm = TRUE), length = 200)

# Normal density values
curve_y <- dnorm(x, mean = mean(h, na.rm = TRUE), sd = sd(h, na.rm = TRUE))

# Scale the curve to the histogram frequency scale
curve_y_scaled <- curve_y * max(h_hist$counts) / max(curve_y)

# Add the curve
lines(x, curve_y_scaled, col = "red", lwd = 2)

dev.off()

png("assets/ScatterPlots/totalScatter.png", width = 800, height = 600)

plot(df$GDPperCapita, df$HappScore,
     xlab = "Productivity",
     ylab = "Happiness Score",
     main = "Scatterplot of Happiness Score and GDP",
     pch = 19,
     xlim = c(0, 2),
     ylim = c(0, 8)
)

abline(lm(HappScore ~ GDPperCapita, data = df), col = "red", lwd = 2)

dev.off()

png("assets/HistogramPlots/top60Histogram.png", width = 800, height = 600)

# Histogram using frequency (default)
h1_hist <- hist(h1,
     breaks = 15,
     col = "lightblue",
     main = "Histogram of Happiness Score (Frequency) for high-productivity countries",
     xlab = "Happiness Score",
     ylab = "Frequency",
     ylim = c(0, 10.0),
     xlim = c(2.0, 8.0)
)

# Create x-values for the curve(top60)
x1 <- seq(min(h1, na.rm = TRUE), max(h1, na.rm = TRUE), length = 200)

# Normal density values
curve_y1 <- dnorm(x1, mean = mean(h1, na.rm = TRUE), sd = sd(h1, na.rm = TRUE))

# Scale the curve to the histogram frequency scale
curve_y1_scaled <- curve_y1 * max(h1_hist$counts) / max(curve_y1)

# Add the curve
lines(x1, curve_y1_scaled, col = "red", lwd = 2)

dev.off()

png("assets/ScatterPlots/top60Scatter.png", width = 800, height = 600)
     
plot(top60$GDPperCapita, top60$HappScore,
     xlab = "Productivity",
     ylab = "Happiness Score",
     main = "Scatterplot of Happiness Score and GDP for high-productivity countries",
     pch = 19,
     xlim = c(0, 2),
     ylim = c(0, 8)
)

abline(lm(HappScore ~ GDPperCapita, data = top60), col = "red", lwd = 2)

dev.off()

png("assets/HistogramPlots/bottom60Histogram.png", width = 800, height = 600)

h2_hist <- hist(h2,
     breaks = 15,
     col = "lightblue",
     main = "Histogram of Happiness Score (Frequency) for low-productivity countries",
     xlab = "Happiness Score",
     ylab = "Frequency",
     ylim = c(0, 10.0),
     xlim = c(2.0, 8.0)
)

# Create x-values for the curve(bottom60)
x2 <- seq(min(h2, na.rm = TRUE), max(h2, na.rm = TRUE), length = 200)

# Normal density values
curve_y2 <- dnorm(x2, mean = mean(h2, na.rm = TRUE), sd = sd(h2, na.rm = TRUE))

# Scale the curve to the histogram frequency scale
curve_y2_scaled <- curve_y2 * max(h2_hist$counts) / max(curve_y2)

# Add the curve
lines(x2, curve_y2_scaled, col = "magenta", lwd = 2)

dev.off()

png("assets/ScatterPlots/bottom60Scatter.png", width = 800, height = 600)

plot(bottom60$GDPperCapita, bottom60$HappScore,
     xlab = "Productivity",
     ylab = "Happiness Score",
     main = "Scatterplot of Happiness Score and GDP for low-productivity countries",
     pch = 19,
     xlim = c(0, 2),
     ylim = c(0, 8)
)

abline(lm(HappScore ~ GDPperCapita, data = bottom60), col = "red", lwd = 2)

dev.off()

# Correlation Analysis
# Correlation for the entire dataset(in-terms of GDP)
cor_total <- cor.test(df$HappScore, df$GDPperCapita, method = "pearson")
# print("--- Correlation: Total Dataset (Pearson) ---")
# print(cor_total)

# Correlation for the top 60 countries
cor_top60 <- cor.test(top60$HappScore, top60$GDPperCapita, method = "spearman")
# print("--- Correlation: Top 60 Countries (Spearman) ---")
# print(cor_top60)

# Correlation for the bottom 60 countries(in-terms of GDP)
cor_bottom60 <- cor.test(bottom60$HappScore, bottom60$GDPperCapita, method = "spearman")
# print("--- Correlation: Bottom 60 Countries (Spearman) ---")
# print(cor_bottom60)