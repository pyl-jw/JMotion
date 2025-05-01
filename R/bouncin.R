#' @title bouncin
#' @description determine coordinate path of object for a parabolic bounce
#' @name bouncin
#' @param n_point number of desired points for coordinates
#' @param w width of canvas
#' @param h height of canvas
#' @return data frame of coordinates
#' @examples
#' bouncin(17,5000,3000)
#' bouncin(30,720,720)
#' @export

library(purr)

bouncin <- function(n_points, w, h) {
  cx <- w / 2
  ly <- (2/3) * h
  xr <- w / 2
  x <- seq(cx - xr, cx + xr, length.out = n_points)
  a <- -ly / xr^2
  y <- map_dbl(x, ~ a * (.x - cx)^2)
  tibble::tibble(x = x, y = y)
}
