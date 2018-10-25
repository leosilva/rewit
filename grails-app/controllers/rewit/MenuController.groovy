package rewit

class MenuController {

    FollowService followService

    def login() {
        render view: '/login', model: [active: 'login']
    }

    def timeline() {
        def timeline = []
        if (session.user) {
            def follows = followService.listFollowing(session.user)
            follows.each { f ->
                timeline += Rewit.findAllByUser(f.followed)
            }
        }
        timeline = timeline.sort { it.dateCreated }.reverse()
        respond timeline, view :'/index', model: [active: 'timeline']
    }

    def newRewit() {
        respond new Rewit(params), view :'/rewit/create', model: [active: 'rewit']
    }

    def listFollowers() {
        def followers = followService.listFollowers(session.user)
        // a variável no GSP será followList
        respond followers, view: '/followed/list', model: [active: 'followers']
    }

    def listFollowing() {
        def following = followService.listFollowing(session.user)
        def notFollowing = followService.listNotFollowing(session.user)
        // a variável no GSP será followList
        respond following, view: '/following/list', model: [active: 'following', usersNotFollowing: notFollowing]
    }

    def about() {
        render view : '/about', model: [active: 'about']
    }
}
