package rewit

class Rewit {

    String message
    Date dateCreated

    static belongsTo = [user: User]

    static constraints = {
        message(nullable: false, blank: false, maxSize: 255)
    }
}
