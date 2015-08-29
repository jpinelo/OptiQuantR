#'Excludes Data of Selected Gate(s) from Dataset
#'
#'\code{excludegates} takes all the data from a dataset read with readoqcsv()
#'and filters it, excluding the data corresponding to the gates indicated in
#'argument gate_id.
#'
#'@seealso
#'\code{\link{readoqcsv}}, \code{\link{keepgates}}
#'
#'excludegates() takes two arguments: x = the dataset to filter, y = the
#'number of the gate(s) to keep.
#'
#'@param name Variable name
#'
#'@param gate_id Number
#'
#'@return
#'excludegates() returns a keyed data.table and data.frame excluding
#'the data for the gates specified.
#'
#'@examples
#'excludegates(data, 5)
#'excludegates(data, gate_id = c(5, 9, 347, 898))
#'
#'
#'@import
excludegates <- function(x, gates) {
  result <- dplyr::filter(x, gate_id != gates)
  removed <- nrow(x) - nrow(result)
  statement <- paste(removed, "row(s) removed from object", sep = " ")
  print(statement)
  return(result)
}
