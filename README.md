
# README

## Homework 09: Automating Data-analysis Pipelines
### Author: Javier Castillo-Arnemann

This is a repository containing the 4th assignment of the **STAT 547** course. The course main page can be found [here](http://stat545.com/Classroom). The instructions for this assignment can be accesed [here](http://stat545.com/Classroom/assignments/hw09/hw09.html).

This repo is derived from [this](https://github.com/STAT545-UBC/make-activity) original repo by Jennifer Bryan.

The objective of this assignment is to add new instructions to the `Makefile` in order to run a simple automated analysis. The instructions added to the original are the following:

- `letter_count.tsv`: outputs a `.tsv` file with a summary of how many words start with each letter in the alphabet and a `.png` figure that shows the distribution.
- `report.html`: part of the original repo, but updated to include the letter count analysis. 
- `first_last.tsv`: outputs a `.tsv` file that stores the most common start-end letter combinations.
- `first_last_report.html`: generates a report with the information from `first_last.csv`.
- `organize`: creates directories and moves the relevant file to their corresponing directory.

As usual, `all` runs the whole pipeline and `clean` removes all the output. The two `.rmd` files aren't moved to the `reports` directory to avoid working directory issues when re-running the pipeline.

## Pipeline Graph

![graph](https://github.com/STAT545-UBC-students/hw09-yavyx/blob/master/h09_pipeline.png)

## Resources

- [Automating Data-analysis Pipelines](http://stat545.com/automation04_make-activity.html)