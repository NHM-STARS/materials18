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
usethis::use_course("https://github.com/karthik/nhm18/raw/master/nhm18.zip")
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
		- [Intro to R (slides)](https://github.com/NHM-STARS/materials18/blob/master/lectures/intro-to-R.pdf)
		- [Introduction to Rstudio (slides)](http://inundata.org/lectures/basics-rstudio/#/) 
- The `tidyverse`, data wrangling and tidying in R.   
		- [Introduction to the Tidyverse (Karthik's slides)](http://inundata.org/lectures/tidyr/#/)   
		- [Intro to the Tidyverse (Natalie's slides)](https://github.com/NHM-STARS/materials18/blob/master/lectures/intro-to-tidyverse.pdf)
		- [Working with dates in R (slides)](http://inundata.org/lectures/lubridate/#/)
- Data Visualization with `ggplot2`

## 📈 Day 2

- Data hygiene
- [More data wrangling and tidying in R (slides)](http://inundata.org/lectures/more-tidying/#/)
- More data visualisation in R with `ggplot2`

## 🌍 Day 3

- Basic statistics in R
- [Basic stats (slides)](https://github.com/NHM-STARS/materials18/blob/master/lectures/basic-stats-R.pdf)
- Git and GitHub through RStudio and the terminal
- Making maps with `ggmap` and `leaflet`
- [Intro to ggmap (slides)](https://github.com/NHM-STARS/materials18/blob/master/lectures/ggmap_basics.pdf)

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
