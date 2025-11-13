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

## Research Questions
Our project will investigate one of the following types of research questions:

### Option 1: Correlation Analysis
Exploring relationships between continuous variables (e.g., GDP per Capita vs. Happiness Score)

### Option 2: Comparison of Means
Comparing average values across different groups (e.g., Happiness Score across regions)

### Option 3: Comparison of Proportions
Analyzing categorical distributions across groups

## Methodology

### Tools & Libraries
- **R** (version 4.0+)
- **Only those tools and libraries taught in the module Team Research**

### Analysis Steps
1. **Data Import & Cleaning**
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
