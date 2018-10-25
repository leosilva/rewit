package rewit

class User {

    String username

    static hasMany = [rewits: Rewit]

    static constraints = {
        username(nullable: false, blank: false, unique: true)
    }
}
