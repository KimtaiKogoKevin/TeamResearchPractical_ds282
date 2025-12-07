# Group A14 - World Happiness Data Analysis

## Team Members
- **Kelvin Amaadi Baani-Anoff**
- **Gideon Ganah**
- **Edosa Izevbizua**
- **Kevin Kogo**
- **Daniel Terna Tule**

## Project Overview
This project analyzes the World Happiness Report 2015 dataset to explore relationships between various factors contributing to national happiness scores.

## Dataset
**File:** `2015.csv`

**Description:** World Happiness Report data from 2015 containing happiness rankings and scores for 158 countries, along with various economic and social indicators.

### Key Variables
- **Country** - Name of the country
- **Region** - Geographical region
- **Happiness Rank** - Global ranking (1-158)
- **Happiness Score** - Overall happiness score (0-10 scale)
- **Economy (GDP per Capita)** - Economic contribution to happiness
- **Family** - Social support contribution
- **Health (Life Expectancy)** - Health contribution
- **Freedom** - Personal freedom contribution
- **Trust (Government Corruption)** - Trust in government
- **Generosity** - Charitable giving contribution
- **Dystopia Residual** - Unexplained variance

## Research Question
**Type:** Correlation Analysis (Option 3 in Assignment Brief)
**Focus:** To what extent does national wealth (GDP per Capita) correlate with national happiness, and does this relationship differ between wealthy (Top 60) and developing (Bottom 60) nations?

## Repository Structure
*   `scripts/Combined.R`: **The Master Script.** Contains all code for data cleaning, segmentation, visualization, and statistical analysis.
*   `assets/`: Contains the generated plots (Histograms and Scatterplots).
*   `2015_original_dataset.csv`: The raw data file.

## How to Run the Analysis
1.  Open `scripts/Combined.R` in RStudio.
2.  Run the entire script.
3.  **Outputs:**
    *   **Console:** Prints Pearson and Spearman correlation test results for the Total, Top 60, and Bottom 60 datasets.
    *   **Plots:** Generates and saves visualization images to the `assets/` folder.

## Methodology & Analysis Steps
The analysis is performed entirely in `scripts/Combined.R`:
1. **Data Import & Cleaning:** Renaming columns for clarity.
2. **Segmentation:** Splitting data into "Top 60" (High GDP) and "Bottom 60" (Low GDP) groups.
3. **Visualization:**
    *   Histograms with Normal Curves (to check distribution).
    *   Scatter Plots with Regression Lines (to visualize correlation).
4. **Statistical Testing:**
    *   **Pearson Correlation:** For the global dataset.
    *   **Spearman Correlation:** For the subgroups (robust against outliers/non-linearity).
   - Load the 2015.csv dataset
   - Handle missing values
   - Filter outliers if necessary

2. **Exploratory Data Analysis**
   - Summary statistics
   - Histograms and distributions
   - Initial visualizations

3. **Statistical Testing**
   - Choose appropriate test based on research question:
     - **Pearson/Spearman correlation** for correlation questions
     - **t-test/Wilcoxon test** for comparison of means
     - **Chi-squared test** for comparison of proportions

4. **Visualization**
   - Create appropriate graphs (scatter plots, box plots, or bar charts)
   - Add trend lines and labels

5. **Interpretation**
   - Analyze p-values and effect sizes
   - Draw conclusions
   - Discuss limitations
