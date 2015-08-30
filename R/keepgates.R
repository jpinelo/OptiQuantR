#'Keeps Data of Selected Gate(s) in the Dataset
#'
#'\code{keepgates} takes all the data from a dataset read with readoqcsv() and
#'filters it, keeping only the data corresponding to the gates indicated in
#'argument gate_id. Keeps data from selected gates in dataset.
#'
#'@seealso
#'\code{\link{readoqcsv}}, \code{\link{excludegates}}
#'
#'keepgates() takes two arguments: x = the dataset to filter, y = the
#'number of the gate(s) to keep.
#'
#'@param
#'x   Name of variable containing data previousley imported with readoqcsv()
#'
#'@param
#'gate_id    Number
#'
#'@return
#'keepgates() returns a keyed data.table and data.frame
#'containing only the data for the gates specified.
#'
#'@examples
#'keepgates(data, 5)
#'keepgates(data, gate_id = c(5, 9, 347, 898))
#'
#'@import
keepgates <- function(x, gates) {
  result <- dplyr::filter(x, gate_id %in% gates)

  return(result)
}
