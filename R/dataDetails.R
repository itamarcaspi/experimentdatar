#' @title Opens a link to the paper behind a given method
#'
#' @description \code{dataDetails} opens the browser and displays the paper that uses the
#'   dataset
#'
#' @param datasetName   A string with the name of the dataset
#'
#' @importFrom utils browseURL
#'
#' @export
#'
#'
#' @examples
#' dataDetails("social")
#'
dataDetails <- function(datasetName = NULL) {

  if (!is.character(datasetName)) {
    stop("Argument datasetName is not of type charachter",call. = FALSE)
  }

  switch(datasetName,
         "social" = {
           utils::browseURL("https://github.com/gsbDBI/ExperimentData/blob/master/Social/socialvoting.pdf")
         },
         "charitable" = {
           utils::browseURL("https://github.com/gsbDBI/ExperimentData/blob/master/Charitable/49%20Does%20Price%20Matter%20in%20Charitable%20Giving%20Project.pdf")
         },
         "mobilization" = {
           utils::browseURL("https://github.com/gsbDBI/ExperimentData/blob/master/Mobilization/matchingvexperimentpaper.pdf")
         },
         "secrecy" = {
           utils::browseURL("https://github.com/gsbDBI/ExperimentData/blob/master/Secrecy/secrecy.pdf")
         },
         "welfare" = {
           utils::browseURL("https://github.com/gsbDBI/ExperimentData/blob/master/Welfare/Green%20and%20Kern%20BART.pdf")
         },
         "IVdataset" = {
           utils::browseURL("http://economics.mit.edu/faculty/angrist/data1/data/angkru1991")
         },
         "voucher" = {
           utils::browseURL("http://economics.mit.edu/faculty/angrist/data1/data/angetal02")
         },
         {
           stop("No such dataest found.", call. = FALSE)
         }
  )


}
