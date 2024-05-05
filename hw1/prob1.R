library(faraway)
data("diabetes")

# 2. Count observations, number of variables, individuals
# Number of observations
nrow(diabetes)

# Number of variables
ncol(diabetes)


# 3. Missing HDL Levels and Mean HDL Level:
missing_hdl <- sum(is.na(diabetes$hdl))
missing_row_numbers <- which(is.na(diabetes$hdl))
mean_hdl_level <- mean(diabetes$hdl, na.rm = TRUE)
cat("Number of individuals with missing HDL levels:", missing_hdl, "\n")
cat("Row numbers of missing individuals:", missing_row_numbers, "\n")
cat("Mean HDL level of individuals in this sample:", mean_hdl_level, "\n")

# 4. Standard Deviation of Total Cholesterol:
sd_cholesterol <- sd(diabetes$chol, na.rm = TRUE)
cat("Standard deviation of total cholesterol:", sd_cholesterol, "\n")

# 5. Range of Ages:
age_range <- range(diabetes$age)
cat("Range of ages of individuals in this sample:", age_range, "\n")

# 6. Mean HDL of Males:
mean_hdl_males <- mean(diabetes$hdl[diabetes$gender == "male"], na.rm = TRUE)
cat("Mean HDL of males in this sample:", mean_hdl_males, "\n")

# 7. Scatter Plot of HDL vs Weight:
plot(diabetes$weight, diabetes$hdl, col = "blue", main = "HDL vs Weight", xlab = "Weight", ylab = "HDL")

# 8. Scatter Plot of Total Cholesterol vs Weight:
plot(diabetes$weight, diabetes$chol, col = "green", main = "Total Cholesterol vs Weight", xlab = "Weight", ylab = "Total Cholesterol")

# 9. Boxplots for HDL by Gender:
boxplot(hdl ~ gender, data = diabetes, col = c("pink", "lightblue"), main = "HDL by Gender", xlab = "Gender", ylab = "HDL")
