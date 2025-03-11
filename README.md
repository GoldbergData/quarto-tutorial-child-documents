# Time Series Final Project (Example with Quarto Child Documents)

Welcome to this example repository demonstrating how to use **Git**, **GitHub**, and **Quarto** child documents to collaborate on a time series project. This structure is inspired by the UChicago Time Series final project instructions, but you can adapt it to any similar project or course. You can view an example document [here](https://goldbergdata.github.io/quarto-tutorial-child-documents/).

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

3. **Install Quarto (if you haven’t already)**  
   - Follow the instructions at [https://quarto.org/docs/get-started/](https://quarto.org/docs/get-started/) to install Quarto on your system.

4. **Render the project**  
   - From within your cloned repository directory, run:
     ```bash
     quarto render index.qmd
     ```
   - This command creates output files (e.g., `index.html` or `index.pdf` depending on your format) that combine `index.qmd` and all child documents.

## Collaborative Tips

- **Use issues**: Create GitHub issues to discuss tasks, bugs, or feature requests.
- **Communicate early**: For group work, agree on coding conventions and how changes are communicated.
- **Regular commits**: Commit your work often to ensure your progress is saved and shared.
- **Review each other’s code**: Provide feedback through GitHub’s review features.

## Project Outline (Inspired by UChicago Time Series)

1. **Problem Definition & Audience**
2. **Data Exploration**
3. **Modeling Approaches**
4. **Model Selection & Validation**
5. **Results & Discussion**
6. **Conclusions & Future Work**

Explore the Quarto files (`.qmd`) to see how we separate each section into different documents, then render them all into one final output.

## Contact

If you have questions or suggestions for improvement, feel free to email me. Good luck with your time series project!
