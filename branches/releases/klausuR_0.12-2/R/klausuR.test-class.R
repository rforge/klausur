## temporarily turned off most of the roxygen comments
## class docs will remain static until roxygen2 supports "@slot"

# Class klausuR.test
#
# This class is currently an empty placeholder. In future releases, it is planned to contain the actual test items in a list
# like format.
#
# @title S4 class klausuR.test
# @slot items Empty dummy.
# @name klausuR.test,-class
# @aliases klausuR.test-class klausuR.test,-class
#' @import methods
# @keywords classes
# @author m.eik michalke \email{meik.michalke@@uni-duesseldorf.de}
#' @exportClass klausuR.test
#' @noRd
# @rdname klausuR.test-class

setClass("klausuR.test",
	representation=representation(
		items="list"
  ),
  prototype(
		items=list()
  )
)

# setValidity("klausuR.titems", function(object){
# 	obj.test	<- object@test
# })
