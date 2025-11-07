# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Japanese-language R tutorial repository using Quarto documents (.qmd) to teach statistical analysis and regression techniques. The project generates educational materials in multiple output formats (HTML, PDF, DOCX) with detailed explanations of R code, statistical formulas, and their interpretations.

## Repository Structure

- `01stat.qmd`: Introduction to R basics, data frames, descriptive statistics, plotting, and simple linear regression using the `cars` dataset
- `02reg.qmd`: Advanced topics including multiple regression (Mincer equation), dummy variables, interaction terms, F-tests, and robust standard errors
- `*.csv` files: Income datasets (`6_1_income.csv`, `7_1_income.csv`) used for regression examples
- Output files (`.html`, `.pdf`, `.docx`): Generated documentation in multiple formats

## Building and Rendering

### Render Quarto documents to all formats:
```bash
quarto render 01stat.qmd
quarto render 02reg.qmd
```

### Render to specific format:
```bash
quarto render 01stat.qmd --to html
quarto render 01stat.qmd --to pdf
quarto render 01stat.qmd --to docx
```

### Preview with live reload:
```bash
quarto preview 01stat.qmd
quarto preview 02reg.qmd
```

## R Project Configuration

- R Project file: `r-docs-positron.Rproj`
- LaTeX engine: LuaLaTeX (configured for Japanese PDF output with `ltjsarticle` document class)
- Encoding: UTF-8
- Indentation: 2 spaces

## Document Structure and Style

### Output Format Configuration
Each .qmd file specifies three output formats in the YAML header:
- **HTML**: Table of contents enabled, 2 levels deep, with section numbering
- **DOCX**: Default settings
- **PDF**: Uses LuaLaTeX with `ltjsarticle` class for proper Japanese typesetting

### Content Organization
Documents follow this pedagogical pattern:
1. Show R code chunk
2. Display output
3. Provide mathematical formula (LaTeX)
4. Explain interpretation in Japanese
5. Verify formula with alternative R code when applicable

### Code Chunk Philosophy
- Use `cars` dataset for introductory examples (01stat.qmd)
- Use income CSV data for applied econometric examples (02reg.qmd)
- Include verification code to demonstrate formula equivalence (e.g., computing mean from sum/n, computing R² from residuals)
- Show multiple syntactic approaches to the same operation (e.g., `plot(x, y)` vs `plot(y ~ x, data=df)`)

## Key R Packages Used

- Base R: `lm()`, statistical functions (`mean()`, `var()`, `sd()`, `cov()`, `cor()`)
- `lmtest`: Coefficient testing with alternative variance-covariance matrices
- `sandwich`: Heteroskedasticity-robust standard errors (`vcovHC()`)
- `estimatr`: Robust regression (`lm_robust()`) and Wald testing

## Important Technical Details

### Japanese Language Support
- PDF output requires LuaLaTeX engine with `ltjsarticle` document class
- All explanatory text is in Japanese
- Mathematical notation uses standard LaTeX

### Statistical Formulas
Documents emphasize showing both:
- Mathematical definitions in LaTeX (e.g., $\bar{x} = \frac{1}{n}\sum_{i=1}^n x_i$)
- Computational verification in R code

### Regression Analysis Patterns
- **FWL Theorem**: Demonstrated through regression anatomy (residualized variables)
- **F-tests**: Both manual calculation from SSR and `anova()` function
- **Robust inference**: Multiple approaches shown (`vcovHC()` + `coeftest()`, `lm_robust()`, `waldtest()`)
- **Interaction terms**: Multiple syntactic forms (manual variable creation, `:` operator, `*` operator)

## Git Workflow

Main branch: `main`

Untracked output files (HTML, PDF, DOCX, .DS_Store) are present but not committed. Only source .qmd files and data .csv files are version controlled.
