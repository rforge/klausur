#' Generate empty data sets for the use with klausur
#' 
#' @title Generate data sets for the use with klausur
#' @param items an integer declaring the number of items to be created
#' @param obs integer, numer ob observations
#' @param items.char logical, will the answers be coded as characters or integer numbers (default)?
#' 
#' @return A data.frame containing the variables "No", "Name", "FirstName", "MatrNo", "Pseudonym" and the number of items as needed.
#' @seealso \code{\link[klausuR:klausur]{klausur}}, \code{\link[klausuR:klausur.compare]{klausur.compare}},
#'   \code{\link[klausuR:klausur.gen.marks]{klausur.gen.marks}}, \code{\link[klausuR:klausur.gen.corr]{klausur.gen.corr}}
#' @keywords datagen
#' @author m.eik michalke \email{meik.michalke@@uni-duesseldorf.de}
#' @examples
#' antworten2 <- klausur.gen(items=20,obs=40)
#' @export

klausur.gen <- function(items=NULL, obs=1, items.char=FALSE){

  if(!is.numeric(items) || (floor(items) != items) || !(items < 1000))
    stop(simpleError("'items' must be an integer < 1000"))
  if(!is.numeric(obs) || (floor(obs) != obs))
    stop(simpleError("'obs' must be an integer"))

  # generate item names and compute the needed number of leading zeros
  # gen.item.names() is an internal function of package klausuR
  item.names <-	gen.item.names(items)

  daten <- data.frame(No=c(1:obs), Name=as.character(c(NA)), FirstName=as.character(c(NA)), MatrNo=as.integer(c(NA)), Pseudonym=as.character(c(NA)), stringsAsFactors=FALSE)
  daten[6:(items+5)] <- if(items.char) as.character(c(NA)) else as.integer(NA)
  names(daten)[6:(items+5)] <- item.names

  return(daten)
}
