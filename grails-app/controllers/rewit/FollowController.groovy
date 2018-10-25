package rewit

class FollowController {

    FollowService followService

    def follow() {
        followService.doFollow(params.userId, session.user.id)
        redirect(controller: 'menu', action: 'listFollowing')
    }

    def unfollow() {
        followService.findByFollowedAndFollowing(params.userId, session.user.id)
        redirect(controller: 'menu', action: 'listFollowing')
    }
}
