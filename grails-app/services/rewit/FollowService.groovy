package rewit

import grails.gorm.transactions.Transactional

@Transactional
class FollowService {

    /**
     * Método que lista todos os usuários que seguem
     * o usuário passado como parâmetro.
     * @param user
     * @return
     */
    def listFollowers(user) {
        Follow.findAllByFollowed(user)
    }

    /**
     * Método que lista todos os usuários que o usuário passado
     * como parâmetro segue.
     * @param user
     * @return
     */
    def listFollowing(user) {
        Follow.findAllByFollowing(user)
    }

    /**
     * Método que lista todos os usuários que o usuário passado como
     * parâmetro ainda não segue.
     * @param user
     * @return
     */
    def listNotFollowing(user) {
        user.refresh()
        def usersFollowing = Follow.findAllByFollowing(user)
        def lista = User.findAllByUsernameNotInList(usersFollowing.collect { it.followed.username })
        lista.removeAll {it.username == user.username}
        lista
    }

    /**
     * Método que efetivamente (no banco de dados)
     * realiza a ação de não seguir, baseado nos ids dos
     * usuários passados como parâmetro.
     * @param followedId
     * @param followingId
     * @return
     */
    def doUnfollow(followedId, followingId) {
        def followed = User.get(followedId)
        def following = User.get(followingId)
        def follow = Follow.findByFollowedAndFollowing(followed, following)
        follow.delete()
    }

    /**
     * Método que efetivamente (no banco de dados)
     * realiza a ação de seguir, baseado nos ids dos
     * usuários passados como parâmetro.
     * @param followedId
     * @param followingId
     * @return
     */
    def doFollow(followedId, followingId) {
        def followed = User.get(followedId)
        def following = User.get(followingId)
        def follow = new Follow(followed: followed, following: following)
        follow.save()
    }

}
