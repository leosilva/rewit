package rewit

class User {

    String username
    String password

    static hasMany = [followers : User, following: User, rewits: Rewit]

    static constraints = {
    }
}
