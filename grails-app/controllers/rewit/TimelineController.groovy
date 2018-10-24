package rewit

class TimelineController {

    def index() {
        def timeline = null
        if (session.user) {
            timeline = Rewit.findAllByUser(session.user, [sort: "dateCreated", order: 'desc'])
        }
        render (view:'/index', model: [timeline: timeline])
    }
}
