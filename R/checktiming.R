#' @title checktiming
#' @description determine frame timing of a gif
#' @name checktiming
#' @param x gif file
#' @return prompt containing timing of each frame
#' @export

library(av)

checktiming <- function(x){
  data <- av_media_info(x)
  
  time <- data$duration / data$video$frames
  
  prompt <- paste("Each frame is dsipalyed for every ", time," seconds")
  return(prompt)
}