package rewit

class FollowController {

    FollowService followService

    /**
     * Action onde o usuário da sessão segue outro usuário.
     * Responsável por criar esse relacionamento entre usuário que segue
     * e usuário que é seguido.
     * @return
     */
    def follow() {
        followService.doFollow(params.userId, session.user.id)
        redirect(controller: 'menu', action: 'listFollowing')
    }

    /**
     * Action que realiza a função onde o usuário da sessão deixa de seguir
     * outro usuário.
     * @return
     */
    def unfollow() {
        followService.doUnfollow(params.userId, session.user.id)
        redirect(controller: 'menu', action: 'listFollowing')
    }
}
