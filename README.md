<!-- README.md is generated from README.Rmd. Please edit that file -->
What is OptiQuant
-----------------

OptiQuantR is an R package that facilitates reporting OptiQuant data throught the use of automating tools. OptiQuant maps and charts data, but carrying out a detailed analysis in the presence of many variables can be very time consuming. OptiQuantR facilitates the creation of a standard detailed report even for the user with no R experience, while allowing for some customization of reporting with extremely easy user input. The package also simplifies the workflow of experienced R users who can go straight to analysis and forget about importing and preparing the data for analysis. Furthermore, OptiQuantR greatly expands the capacity of carrying out advanced statistical analysis of data collated with OptiQuant.

OptiQuant's main components
---------------------------

The package will be composed of three main components:a) loading and preparing data (released with version 0.0.1); b) functions for easy data filtering; c) easy data reporting. COmponents b) and C) are planned for future releases.

How do you get it and use it
----------------------------

If you have a rich OptiQuant log file with many gates, categories and events, just export it, open it with R and run a command to get a comprehensive report. (Please note that the reporting feature is still not available).

R is a free open source software package that can be downloaded from <https://cran.r-project.org/>. Once R has been downloaded and installed, just open R and type:

``` r
> install.packages("OptiQuantR")
```

(Please be aware of capitalization and don't forget the "" around OptiQuant.)

R will download the package from the CRAN servers and intall if for you.

``` r
> library(OptiQuantR)
```

This will load the package so that you can use it in this R session.

readoqcsv("name and extension of your csv file"), such as:

``` r
> readoqcsv("opti_557d819b88209.csv")
```

This will load your file and prepare the data for fast and simple analysis and reporting. Please mind that if you did not place the file in the current working directory, you should includ the full system path plus the file name and extension, such as: "/Users/jpinelo/JPLab/countanalysis/opti\_557d819b88209.csv"
