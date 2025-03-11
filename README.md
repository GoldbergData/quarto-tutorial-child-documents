# Quarto Child Documents for Science Collaboration

Welcome to this example repository demonstrating how to use **Git**, **GitHub**, and **Quarto** child documents to collaborate on science project. This structure is inspired by the UChicago Time Series final project instructions (I am a TA for the graduate course), but you can adapt it to any similar project or course. 
- 🌐 [HTML Report](https://GoldbergData.github.io/quarto-tutorial-child-documents/)
- 📄 [PDF Report](https://GoldbergData.github.io/quarto-tutorial-child-documents/index.pdf)

## Project Overview

This repository showcases a basic time series analysis project. *The data and results found in this repo only serves as an example and not a true and complete analysis.* We use separate Quarto child documents for each major component:

1. **Introduction & Problem Statement**
2. **Exploratory Data Analysis (EDA)**
3. **Modeling Approaches**
4. **Results & Conclusion**

By splitting the project into multiple files, team members can work in parallel while still producing a single, unified report.

### Why Quarto Child Documents?

- **Modular collaboration**: Different people can focus on distinct sections (for example, one person on EDA and another on modeling).
- **Reduced merge conflicts**: Changes are made in separate files, keeping the project organized.
- **Professional output**: Quarto can render to multiple formats (HTML, PDF, Word, etc.) from the same source.

## Repository Structure

```text
.
├── index.qmd            # Main Quarto file (stitches child documents)
├── eda.qmd              # Exploratory Data Analysis
├── model1.qmd           # ARIMA model analysis
├── model2.qmd           # ETS model analysis
├── model3.qmd           # TBATS model analysis
├── references.bib       # References for citations
├── render.sh            # Script to render HTML/PDF reports
└── docs/                # Contains rendered HTML, PDF, and supporting files
```

## Installation Requirements

Follow these instructions to ensure your system has everything needed to render and collaborate with this Quarto project. Most of these instructions should work on other systems. Besides the `homebrew` steps, which you can skip if you are not on macOS.

### 1. Install Quarto

You must have Quarto installed to render `.qmd` documents.

**Using Homebrew** (recommended):

```bash
brew install quarto
```

Or follow official Quarto installation instructions.

### 2. Install R and Required Packages

Make sure you have R installed.

Then install necessary R packages:

```r
install.packages(c("forecast", "ggplot2", "knitr"))
```

### 3. Install TinyTeX (for PDF Output)

Rendering to PDF requires a LaTeX distribution. Use TinyTeX (recommended):

In R, run:
```r
install.packages('tinytex')
tinytex::install_tinytex()
```

After installing, verify with:
```r
tinytex::tinytex_root()
```

### 4. GitHub CLI (Optional, recommended)
To easily manage GitHub repositories, install the GitHub CLI:

```bash
brew install gh
gh auth login
```

## How to Fork & Use This Repo

1. **Fork the repository**  
   - Click the “Fork” button at the top right of this GitHub repo page (in your browser).
   - Choose your GitHub account as the fork destination.

2. **Clone your fork**  
   - Open your terminal and run:
     ```bash
     git clone https://github.com/<your-username>/<this-repo-name>.git
     cd <this-repo-name>
     ```
   - Replace `<your-username>` and `<this-repo-name>` with your details.

3. **Simple rendering**  
   - From within your cloned repository directory, run:
     ```bash
     quarto render index.qmd
     ```
   - This command creates output files (e.g., `index.html` or `index.pdf` depending on your format) that combine `index.qmd` and all child documents.

## Rendering the Report (HTML & PDF) Using Script

This repository includes a convenient script render.sh that automates rendering your Quarto document and updating GitHub Pages.

### Using the render script

Make sure render.sh is executable (run this once):
```
chmod +x render.sh
```

Then, every time you make updates, simply run:
```
./render.sh
```

## Hosting on GitHub Pages

GitHub Pages can easily host your rendered documents:
1.	Go to your repository on GitHub.
2.	Navigate to Settings > Pages.
3.	Under “Source,” select your main branch and set the folder to /docs.
4.	GitHub will provide you with a link such as:

```
https://<your-username>.github.io/<this-repo-name>/
```

Each time you push updates using render.sh, GitHub Pages will automatically update your hosted documents.

## Collaborative Tips

- **Use issues**: Create GitHub issues to discuss tasks, bugs, or feature requests.
- **Communicate early**: For group work, agree on coding conventions and how changes are communicated.
- **Regular commits**: Commit your work often to ensure your progress is saved and shared.
- **Review each other’s code**: Provide feedback through GitHub’s review features.

## Contact

If you have questions or suggestions for improvement, feel free to open an issue or email me.