class User(val id: Long, val firstname: String, val lastname: String, val fullname:Fullname = new Fullname) {
  def getFullname() = this.fullname.get(firstname, lastname)
}

class Fullname() {
  def get(firstname: String, lastname: String) = firstname + " " + lastname
}
val user1 = new User(1, "fuma", "tsuchiya")
println(user1.getFullname())