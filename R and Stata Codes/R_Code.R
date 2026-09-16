# South Korea's Economic Growth
# R Analysis and Graph Reproduction File
#
# Note:
# The presentation contains the methodology, equations, results and some
# visible R commands, but not the complete original R script. This file is
# therefore a structured reproduction template based on the presentation.
# Match variable names to the original PWT/World Bank dataset before use.

# -----------------------------
# 1. Packages
# -----------------------------
library(dplyr)
library(ggplot2)

# -----------------------------
# 2. Data
# -----------------------------
# Replace with the actual project dataset.
# pwt_korea <- read.csv("your_pwt_korea_data.csv")

# The analysis refers to variables such as:
# year, growth_rate, capital_per_worker, output_per_worker,
# real_interest_rate, population_growth, technology_growth,
# depreciation_rate, investment_share, savings_rate, human_capital

# -----------------------------
# 3. Growth rate
# -----------------------------
# pwt_korea <- pwt_korea %>%
#   arrange(year) %>%
#   mutate(growth_rate = log(output_per_worker) -
#                        lag(log(output_per_worker)))

# -----------------------------
# 4. Solow: change in capital per worker
# -----------------------------
# pwt_korea <- pwt_korea %>%
#   mutate(delta_k = investment_share * output_per_worker -
#                    (population_growth + technology_growth +
#                     depreciation_rate) * capital_per_worker)

# -----------------------------
# 5. Barro-style convergence
# -----------------------------
# Unconditional convergence
# model_unconditional <- lm(
#   growth_rate ~ lag(log(output_per_worker)),
#   data = pwt_korea
# )
# summary(model_unconditional)

# Conditional convergence
# model_conditional <- lm(
#   growth_rate ~ lag(log(output_per_worker)) +
#                 investment_share +
#                 human_capital,
#   data = pwt_korea
# )
# summary(model_conditional)

# -----------------------------
# 6. Robust regression example
# -----------------------------
# The presentation visibly contains an R lm specification using:
# growth_rate ~ lag(y)
#
# Example:
# model <- lm(
#   growth_rate ~ lag(log(output_per_worker)),
#   data = pwt_korea
# )
# summary(model)

# -----------------------------
# 7. Actual vs predicted growth
# -----------------------------
# pwt_korea <- pwt_korea %>%
#   mutate(
#     predicted_unconditional = predict(model_unconditional),
#     predicted_conditional = predict(model_conditional)
#   )

# ggplot(pwt_korea, aes(x = year)) +
#   geom_line(aes(y = growth_rate, linetype = "Actual Growth Rate")) +
#   geom_line(aes(y = predicted_unconditional,
#                 linetype = "Predicted Growth Rate")) +
#   labs(
#     title = "Actual vs. Predicted Growth Rate (Unconditional)",
#     x = "Year",
#     y = "Growth rate",
#     linetype = NULL
#   )

# -----------------------------
# 8. Cobb-Douglas production function
# -----------------------------
# A basic empirical production relationship can be estimated as:
#
# log(Y) = alpha log(K) + (1-alpha) log(AL)
#
# Use the project's original variable definitions before estimation.

# -----------------------------
# 9. Human capital and predicted growth
# -----------------------------
# ggplot(pwt_korea, aes(x = human_capital,
#                        y = predicted_conditional)) +
#   geom_point() +
#   geom_smooth(method = "lm", se = FALSE) +
#   labs(
#     title = "Human Capital vs. Predicted Growth (Conditional)",
#     x = "Human capital",
#     y = "Predicted growth"
#   )

# -----------------------------
# 10. RCK calculations
# -----------------------------
# Use the calibrated project parameters to construct:
#
# k_dot = s*f(k) - (n+g+delta)k
#
# and the RCK phase diagram with:
# k_dot = 0
# c_dot = 0
#
# The exact calibration used in the presentation is not included in the
# uploaded source, so the original parameter values should be inserted here.

# -----------------------------
# 11. OLG calculations
# -----------------------------
# The presentation uses a capital transition function of the form:
#
# k(t+1) = [(1-delta)k + i] / (1+n)
#
# The exact saving function and calibration should be taken from the
# original project dataset/model.

# -----------------------------
# 12. Dynamic efficiency
# -----------------------------
# Golden Rule:
# r = n + g
#
# Dynamic efficiency condition:
# r >= n + g
#
# pwt_korea <- pwt_korea %>%
#   mutate(
#     total_growth = population_growth + technology_growth,
#     dynamic_efficiency = real_interest_rate >= total_growth
#   )

# ggplot(pwt_korea, aes(x = year)) +
#   geom_line(aes(y = real_interest_rate,
#                 linetype = "Real interest rate")) +
#   geom_line(aes(y = total_growth,
#                 linetype = "n + g")) +
#   labs(
#     title = "Dynamic Efficiency Check",
#     x = "Year",
#     y = "Rate",
#     linetype = NULL
#   )

# -----------------------------
# 13. Graph export
# -----------------------------
# ggsave("Graphs/figure_name.png", width = 8, height = 5, dpi = 300)
