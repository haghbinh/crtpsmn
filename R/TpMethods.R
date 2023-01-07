#' @export
plot.TP_N <- function(tpn_obj,from=NULL, to=NULL,type='pdf',xlab="",ylab="", ...) {
  if(type=='pdf'){
    g <- tpn_obj$pdf
  } else if(type=='cdf'){
    g <- tpn_obj$cdf
  }
  curve(g,from=from,to=to,xlab=xlab,ylab=ylab,...)
}
