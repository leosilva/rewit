package rewit

class Follow {

    User followed
    User following

    static constraints = {
        followed(nullable: false)
        following(nullable: false)
    }
}
