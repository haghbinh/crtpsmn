#' A Class of TP-N Distribution objects
#' @description The \code{mfd} class represents functional data ...
#' @field basis a basismfd object
#' @field coeff a matrix with nrow=subjects and ncol=total number of basis ...
#'
#' @examples
#' x <- 1
#'
#' @export
tp_n <- R6::R6Class("TP_N",
                    public = list(
                      mean = NA,
                      sd = NA,
                      gamma = NA,
                      #' @description
                      #' Constructor for TP_N objects
                      #' @param mu a scalar
                      initialize = function(mean=0,sd=1,gamma) {
                        init_tpn_check(x,mean,sd,gamma)
                        self$mean <- mean
                        self$sd <- sd
                        self$gamma <- gamma
                      },
                      density = function(x){
                        y <- ifelse(x<self$mean,
                                    2*(1-self$gamma)*dnorm(x,self$mean,self$sd*(1-self$gamma)),
                                    2*self$gamma*dnorm(x,self$mean,self$sd*self$gamma))
                        return(y)
                        }
                    ))
init_tpn_check <- function(x,mean,sd,gamma) TRUE

#' @export
TP_N <- function(mean=0,sd=1,gamma)  tp_n$new(mean,sd,gamma)
