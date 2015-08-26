--- This is my first submission ---

## test environments
* local OS X install 3.2.2
* win-builder (on CRAN, via devtools::build_win, devel and release)

## R CMD check results
There were no ERRORs or WARNINGs

There was 1 NOTE:

* checking R code for possible problems ... NOTE
  readoqcsv: no visible binding for global variable ‘session_id’
  readoqcsv: no visible binding for global variable ‘gate_id’
  readoqcsv: no visible binding for global variable ‘timeStampO’
  readoqcsv: no visible binding for global variable ‘hour’
  readoqcsv: no visible binding for global variable ‘weekday’
  readoqcsv: no visible binding for global variable ‘week’


These variables are necessary for future use.

## Downstream dependencies
There are currently no downstream dependencies for this package
