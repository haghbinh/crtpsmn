# crtpsmn

## Installation


You can install crtpsmn from github with:

``` r
# install.packages("remotes")
remotes::install_github("haghbinh/crtpsmn")
```

To test try following codes:
``` r
library(crtpsmn)
g <- TPN(mean=0,sd=1,gamma=0.6)
class(tpn)
par(mfrow=c(1,2))
plot(g, -2,2,type = 'pdf',lwd=2,ylab='PDF')
plot(g,-2,2,type = 'cdf',lwd=2,col=2,ylab='CDF')
```
