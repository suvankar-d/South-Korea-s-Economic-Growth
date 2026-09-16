* South Korea's Economic Growth
* Stata 17 Analysis and Graph Reproduction File
*
* Note:
* The presentation documents the methodology, results and graph outputs,
* but it does not contain the complete original Stata do-file.
* This is a structured reproduction template based on the presentation.
* Match variable names to the original dataset before running.

clear all
set more off

* --------------------------------
* 1. Load data
* --------------------------------
* use "your_pwt_korea_data.dta", clear
* or:
* import delimited "your_pwt_korea_data.csv", clear

* Expected project variables include:
* year
* growth_rate
* capital_per_worker
* output_per_worker
* real_interest_rate
* population_growth
* technology_growth
* depreciation_rate
* investment_share
* savings_rate
* human_capital

* --------------------------------
* 2. Declare time variable
* --------------------------------
* tsset year

* --------------------------------
* 3. Growth rate
* --------------------------------
* gen ln_y = ln(output_per_worker)
* gen growth_rate = ln_y - L.ln_y

* --------------------------------
* 4. Solow capital accumulation
* --------------------------------
* gen total_growth = population_growth + technology_growth
* gen break_even_investment = ///
*     (total_growth + depreciation_rate) * capital_per_worker
*
* gen delta_k = investment_share * output_per_worker - ///
*     break_even_investment

* --------------------------------
* 5. Unconditional convergence
* --------------------------------
* regress growth_rate L.ln_y

* --------------------------------
* 6. Conditional convergence
* --------------------------------
* regress growth_rate L.ln_y investment_share human_capital

* --------------------------------
* 7. Predicted growth
* --------------------------------
* predict predicted_growth_unconditional if e(sample)
*
* regress growth_rate L.ln_y investment_share human_capital
* predict predicted_growth_conditional if e(sample)

* --------------------------------
* 8. Actual vs predicted growth
* --------------------------------
* twoway ///
*   (line growth_rate year) ///
*   (line predicted_growth_unconditional year), ///
*   title("Actual vs. Predicted Growth Rate (Unconditional)") ///
*   xtitle("Year") ///
*   ytitle("Growth rate") ///
*   legend(order(1 "Actual Growth Rate" 2 "Predicted Growth Rate"))

* --------------------------------
* 9. Conditional predicted growth
* --------------------------------
* twoway ///
*   (line growth_rate year) ///
*   (line predicted_growth_conditional year), ///
*   title("Actual vs. Predicted Growth Rate (Conditional)") ///
*   xtitle("Year") ///
*   ytitle("Growth rate") ///
*   legend(order(1 "Actual Growth Rate" 2 "Predicted Growth Rate"))

* --------------------------------
* 10. Dynamic efficiency
* --------------------------------
* gen total_growth = population_growth + technology_growth
* gen efficiency_gap = real_interest_rate - total_growth
*
* gen dynamically_efficient = real_interest_rate >= total_growth
*
* twoway ///
*   (line real_interest_rate year) ///
*   (line total_growth year), ///
*   title("Dynamic Efficiency Check: South Korea") ///
*   xtitle("Year") ///
*   ytitle("Rate") ///
*   legend(order(1 "Real Interest Rate" 2 "n + g"))

* --------------------------------
* 11. AMSZ criterion
* --------------------------------
* The exact AMSZ variables and specification should be matched to the
* original project dataset/model before estimation.

* --------------------------------
* 12. Graph export
* --------------------------------
* graph export "Graphs/figure_name.png", replace width(1600)
