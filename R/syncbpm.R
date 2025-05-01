#' @title syncbpm
#' @description determine bpm of song to match fps of frame by frame animation for rhythmic visual
#' @name syncbpm
#' @param x duration of animation loop
#' @param y BPM of song
#' @param z beats per animation loop
#' @param n FPS of animation
#' @return prompt containing percentage
#' @examples
#' syncbpm(15,177,2,24)
#' @export

syncbpm <- function(x,y,z,n){
  newsong <- (6000 * z * n) / (x * y)
  if(newsong < 100){
    paste('Decrease speed of music to',round(newsong,1),'%')
  } else if(newsong > 100) {
    paste('Increase speed of music to',round(newsong,1),'%')
  } else {
    print('No change')
  }
}