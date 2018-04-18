# Data munging examples

Space to put the name of the dataset, and what needs/could be tidied

- `NMNH_occurences.txt` [Natalie]
This is data from the Smithosonian's catalogue of mammals. I'd suggest they consider an analysis where they could determine the number of specimens per continent, on a yearly basis, to test for collection biases. They would want to be able to split this by adult/non-adult, and male/female specimens. 
- probably at the higher end of our scale of difficulty

    - `sex` variable is a mess (20 different categories!). Some fun `str_replace` action needed to fix typos etc.
    - `lifeStage` variable is also a mess (91 categories). Needs to be grouped into adults and not adults.
    - `basisOfRecord`  - some are observations from historical records not specimens, needs `filter`.
    - `year` - some miscoded data
    - `continent` is a bit of a mess
    - `scientificName` includes subspecies so needs to be split
    - way more columns than needed
    - actual analysis is just some `dplyr` and `ggplot2`