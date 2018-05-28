library(hflights)
# install.packages('hflights')

# mutate() the flights dataset and add two variables: RealTime: the actual
# elapsed time plus 100 minutes (for the overhead that flying involves) and mph:
# calculated as Distance / RealTime * 60, then filter() to keep observations
# that have an mph that is not NA and that is below 70, finally summarise() the
# result by creating four summary variables: n_less, the number of observations,
# n_dest, the number of destinations, min_dist, the minimum distance and
# max_dist, the maximum distance.


