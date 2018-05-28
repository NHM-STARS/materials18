# Materials for Computational and Data Literacy course @ NHM London, June 2018.

Repository containing materials and useful links associated with the course.

### ⬇️ Installation instructions

Before arriving at the workshop please ensure that you have the latest versions of R ([here](https://cloud.r-project.org/)] and Rstudio [[here](https://www.rstudio.com/products/rstudio/download/)] for your operating system. You will also need to have a bunch of packages for various lessons. The easiest way to do this is by running:

```r
 source('https://raw.githubusercontent.com/NHM-STARS/materials18/master/setup.R')
```

inside the console of your Rstudio (paste the line of code above at the `>` prompt). This should install any missing packages. After installating, rerun this and if all packages are up to date, you shouldn't see any other message. Please email the instructors if you run into any issues. We can also help when you arrive on Day 1 but it would be best to have these issues beforehand so we can hit the ground running.

### Download the course material

```r
# From Rstudio run:
usethis::use_course("https://www.dropbox.com/s/izppxfb2frz43op/nhm18.zip?dl=0")
# THIS LINK WILL CHANGE BEFORE THE COURSE STARTS
# DO NOT RUN THIS BEFORE MONDAY AM
# This will download this repo to your desktop, and unpack everything. 
# After that just open the folder and double click materials18.Rproj
```

# 📆 Course timetable

- Morning sessions run from 9.30am to 1pm.
- Afternoon sessions run from 2pm to 5.30pm.
- Coffee breaks will be at 11am and 3.30pm (but with some flexibility).

## 😎 Day 1 

- Introduction to the course
- Introduction to R  
		- [Introduction to Rstudio (slides)](http://inundata.org/lectures/basics-rstudio/#/) 
- The `tidyverse`, data wrangling and tidying in R.   
		- [Introduction to the Tidyverse (slides)](http://inundata.org/lectures/tidyr/#/)   
		- [Working with dates in R (slides)](http://inundata.org/lectures/lubridate/#/)
- Data Visualization with `ggplot2`

## 📈 Day 2

- Data hygiene
- More data wrangling and tidying in R
- More data visualisation in R with `ggplot2`

## 🌍 Day 3

- Basic statistics in R
- Git and GitHub through RStudio and the terminal
- Making maps with `ggmap` and `leaflet`

## 🚀 Day 4: Reproducibility

- Reproducible workflows
- Functions, tidy code, and literate programming in R  
- Reproducible reports with RMarkdown
- [More advanced gitting (slides)](http://inundata.org/lectures/git/#/)
- Data and code archiving

## 😪 Day 5: BYO Data

- Work with your own data
- Presentations
- Any final questions
