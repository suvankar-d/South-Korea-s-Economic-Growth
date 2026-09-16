# South Korea's Economic Growth

## Overview

This project presents a comparative analysis of South Korea's economic growth using three major growth-model frameworks:

- Solow Growth Model
- Ramsey–Cass–Koopmans (RCK) Model
- Overlapping Generations (OLG) Model

The analysis covers South Korea's post-Korean War economic development and uses macroeconomic data to examine capital accumulation, convergence, steady states, intertemporal consumption, demographic dynamics, and dynamic efficiency.

The empirical work uses Penn World Tables (PWT) and World Bank data, with analysis and visualisation conducted using **R and Stata 17**.

## Research Objectives

The project aims to:

1. Quantify South Korea's economic growth using Solow, RCK, and OLG frameworks.
2. Examine convergence and steady-state properties.
3. Analyse capital accumulation and output dynamics.
4. Examine dynamic efficiency using the condition `r ≥ n + g`.
5. Compare the insights provided by the three growth frameworks.
6. Identify major structural changes and turning points, including the 1997 Asian Financial Crisis and the 2008 Global Financial Crisis.

## Historical Context

South Korea experienced a major transformation following the Korean War.

The presentation highlights:

- Post-war GDP per capita of approximately $67.
- Average annual growth of about 7.1% during 1960–1995.
- Rapid capital accumulation and investment during the high-growth period.
- Major expansion of manufacturing and export-oriented industries.
- Demographic transition and rapid ageing from the 1990s onward.
- South Korea's development into a high-income economy.

The analysis focuses on how capital accumulation, savings, human capital, demographics, and productivity contributed to this transformation.

## Data

### Main Data Sources

The project uses:

- Penn World Tables (PWT)
- World Bank Development Indicators

The presentation specifies annual observations covering approximately 1953–2024 and variables including:

- Capital per worker
- Output per worker
- Real interest rate
- Population growth
- Technological growth
- Depreciation
- Investment
- Savings
- Human capital

## Software Used

### R

R is used for:

- Data processing
- Econometric estimation
- Growth regressions
- Model calculations
- Phase diagrams
- Time-series visualisation
- Graph production

Packages/tools referenced in the presentation include:

- `ggplot2`
- `dplyr`
- `lm`
- PWT data package

### Stata 17

Stata is used for:

- Regression analysis
- Econometric estimation
- Data analysis
- Graph production using `twoway`
- Growth and convergence analysis

The presentation specifically identifies **Stata 17** and commands such as `regress` and `twoway`.

## Methodology

The analysis is organised around three theoretical frameworks.

### 1. Solow Growth Model

The Solow model explains long-run growth through:

- Capital accumulation
- Labour/population growth
- Technological progress
- Savings
- Depreciation

The production function used is:

`Y = K^α (AL)^(1−α)`

The capital accumulation equation is:

`k̇ = s·f(k) − (n+g+δ)·k`

The steady-state capital stock is represented as:

`k* = [s / (n+g+δ)]^(1/(1−α))`

The project also examines convergence and uses Barro-style growth regressions.

### 2. Ramsey–Cass–Koopmans Model

The RCK framework introduces intertemporal household optimisation and endogenous saving behaviour.

The analysis examines:

- Optimal consumption
- Capital accumulation
- Euler equation dynamics
- Saddle-path adjustment
- Steady-state capital and consumption
- Actual versus simulated output

The RCK framework is used to examine how endogenous saving and consumption decisions can explain South Korea's growth trajectory.

### 3. Overlapping Generations Model

The Diamond OLG framework introduces overlapping generations in which households save while young and dissave during old age.

The model is used to examine:

- Demographic dynamics
- Capital accumulation
- Wage and return dynamics
- Generational saving
- Demographic dividend
- Ageing
- Dynamic efficiency

The key dynamic-efficiency condition examined is:

`r = n + g`

with:

- `r` = return on capital
- `n` = population growth
- `g` = technological growth

The project evaluates whether:

`r ≥ n + g`

holds over the observed period.

## Solow Model Analysis

The Solow section includes:

- Phase diagrams
- Actual versus break-even investment
- Change in capital per worker
- Smoothed capital accumulation relationships
- Unconditional convergence regression
- Conditional convergence regression
- Actual versus predicted growth
- Actual versus Cobb-Douglas production
- Human capital and predicted growth

The analysis highlights the importance of high savings and investment during South Korea's rapid-growth period while noting the role of productivity and structural transformation.

## Ramsey–Cass–Koopmans Analysis

The RCK section includes:

- Phase diagram
- Saddle-path analysis
- Capital accumulation over time
- Comparison of actual and simulated output
- Comparison of different measures of capital accumulation

The analysis examines whether an endogenous saving mechanism provides additional insight into South Korea's post-1990s growth dynamics.

## Overlapping Generations Analysis

The OLG section examines:

- Empirical OLG phase diagram
- Capital transition
- Dynamic efficiency
- Real interest rate versus total growth
- Alternative dynamic-efficiency criterion
- Implications of demographic transition and ageing

The analysis relates South Korea's demographic dividend during the high-growth period to capital accumulation and subsequently considers the implications of population ageing.

## Comparative Analysis

The project compares the three frameworks according to:

| Dimension | Solow | RCK | OLG |
|---|---|---|---|
| Savings | Exogenous | Endogenous | Lifecycle-based |
| Convergence | Conditional convergence | Saddle path | Transition function |
| Demographics | Population growth parameter | Population growth in dynamics | Central component |
| Dynamic efficiency | Not directly addressed | Efficient by construction | Explicitly evaluated |
| Main focus | Capital accumulation and convergence | Consumption and intertemporal choice | Demographics and generations |

The comparison is intended to show how each framework captures different dimensions of South Korea's growth experience.

## Graphs

The `Graphs` folder contains the graph files extracted from the project presentation.

Each graph is stored separately with a descriptive label in its filename. The collection includes:

1. Population Growth Over Time
2. Solow: Actual vs Break-Even Investment
3. Solow: Change in Capital per Worker
4. Solow: Actual vs Break-Even Investment (Smooth)
5. Solow: Change in Capital per Worker (Smooth)
6. Barro Unconditional Regression Output
7. Barro Conditional Regression Output
8. Actual vs Predicted Growth (Unconditional)
9. Actual vs Predicted Growth (Conditional)
10. Actual vs Cobb-Douglas Production Function
11. Human Capital vs Predicted Growth (Conditional)
12. RCK Empirical Phase Diagram
13. RCK Empirical Phase Diagram — Observed Path
14. RCK Capital Accumulation Over Time
15. Three Measures of Capital Accumulation
16. OLG Phase Diagram
17. Dynamic Efficiency Check
18. Dynamic Efficiency According to AMSZ Criterion
19. Capital per Worker Convergence
20. Output per Worker vs Steady-State Level

## Repository Structure

```text
South-Korea-Economic-Growth/
│
├── Graphs/
│   ├── 01_Population_Growth_Over_Time.png
│   ├── 02_Solow_Actual_vs_Break_Even_Investment.png
│   ├── 03_Solow_Change_in_Capital_per_Worker.png
│   ├── ...
│   └── 20_Output_per_Worker_vs_Steady_State.png
│
├── R_Code.R
├── Stata_Code.do
└── README.md
```

## R Code

`R_Code.R` contains the R-side analysis structure corresponding to the empirical work and graphs in the presentation.

The R workflow covers:

1. Loading the PWT/World Bank data.
2. Selecting South Korea observations.
3. Creating growth and macroeconomic variables.
4. Estimating growth regressions.
5. Estimating unconditional and conditional convergence relationships.
6. Constructing Solow-related variables.
7. Producing phase diagrams and time-series graphs.
8. Conducting RCK and OLG calculations.
9. Producing the project figures.

## Stata Code

`Stata_Code.do` contains the Stata 17 workflow corresponding to the econometric analysis.

The workflow includes:

1. Data import and preparation.
2. Variable construction.
3. Growth regressions.
4. Convergence analysis.
5. Regression diagnostics.
6. `twoway` graph commands for empirical relationships.
7. Export of results and figures.

## Key Findings Reported in the Project

### Solow

- High savings and investment contributed to rapid capital accumulation during the high-growth period.
- Conditional convergence is examined through growth regressions.
- The basic Cobb-Douglas framework leaves a productivity-related residual, particularly after the 1990s.

### RCK

- Endogenous saving behaviour provides a framework for analysing consumption and capital dynamics.
- The RCK framework is used to examine post-1990s adjustment and simulated output.
- The project compares actual output with the RCK-implied path.

### OLG

- Demographic change is central to the OLG analysis.
- The project links the demographic dividend with capital accumulation.
- Dynamic efficiency is assessed using the relationship between the real interest rate and `n + g`.
- Population ageing is identified as an important consideration for future capital accumulation.

## Limitations

The project identifies several limitations:

1. The models abstract from detailed institutional and policy mechanisms.
2. Open-economy dynamics are not explicitly incorporated despite South Korea's strong trade dependence.
3. Structural breaks such as the 1997 Asian Financial Crisis and 2008 Global Financial Crisis are not fully endogenised.
4. The basic growth models cannot capture every aspect of South Korea's technology, industrial-policy, and structural-transformation experience.

## Conclusion

The project uses Solow, Ramsey–Cass–Koopmans, and Overlapping Generations frameworks to study South Korea's long-run economic growth.

The analysis combines theoretical growth models with empirical data, regression analysis, phase diagrams, and dynamic-efficiency checks. The three frameworks provide different perspectives on capital accumulation, savings, consumption, demographics, convergence, and steady-state dynamics.

The project therefore provides a comparative growth-model framework for analysing South Korea's transformation from the post-war period to a modern high-income economy.
