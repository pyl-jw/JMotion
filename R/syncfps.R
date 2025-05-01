#' @title syncfps
#' @description determine speed of frame by frame animation to match bpm of song for a rhythmic visual
#' @name syncfps
#' @param x duration of animation loop
#' @param y BPM of song
#' @param z beats per animation loop
#' @param n FPS of animation
#' @return prompt containing percentage
#' @examples
#' syncfps(15,177,2,24)
#' @export

syncfps <- function(x,y,z,n){
  newanim <- (100 * x * y) / (60 * z * n)
  if(newanim < 100){
    paste('Decrease speed of animation to',round(newanim,1),'%')
  } else if(newanim > 100) {
    paste('Increase speed of animation to',round(newanim,1),'%')
  } else {
    print('No change')
  }
}
