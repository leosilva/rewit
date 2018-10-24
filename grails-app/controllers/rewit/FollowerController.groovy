package rewit

class FollowerController {

    def list() {
        def followers = Follow.findAllByFollower(session.user)
        println(followers)
        respond followers : followers
    }
}
