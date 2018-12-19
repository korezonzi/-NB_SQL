class Point(val x:Int,val y:Int){
  def distance(p:Point):Int ={
    val xdiff=math.abs(this.x - p.x);
    val ydiff=math.abs(this.y - p.y);
    math.sqrt(xdiff * xdiff + ydiff*ydiff).toInt
  }

  def +(p:Point):Point =
    new Point(x + p.x,y + p.y)

}

object Point{
  def point = (2,3)
  println(point)
}