h <- df$`Happiness Score`  

# Histogram using frequency (default)
h_hist <- hist(h,
              # breaks = 20,
               col = "lightblue",
               main = "Histogram of Happiness Score (Frequency) with Normal Curve",
               xlab = "Happiness Score",
               ylab = "Frequency")

# Create x-values for the curve
x <- seq(min(h, na.rm = TRUE), max(h, na.rm = TRUE), length = 200)

# Normal density values
curve_y <- dnorm(x,
                 mean = mean(h, na.rm = TRUE),
                 sd = sd(h, na.rm = TRUE))

# Scale the curve to the histogram frequency scale
curve_y_scaled <- curve_y * max(h_hist$counts) / max(curve_y)

# Add the curve
lines(x, curve_y_scaled, col = "red", lwd = 2)