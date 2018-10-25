package rewit

import grails.gorm.transactions.Transactional

@Transactional
class FollowService {

    def listFollowers(user) {
        Follow.findAllByFollowed(user)
    }

    def listFollowing(user) {
        Follow.findAllByFollowing(user)
    }

    def listNotFollowing(user) {
        user.refresh()
        def usersFollowing = Follow.findAllByFollowing(user)
        def lista = User.findAllByUsernameNotInList(usersFollowing.collect { it.followed.username })
        lista.removeAll {it.username == user.username}
        lista
    }

    def findByFollowedAndFollowing(followedId, followingId) {
        def followed = User.get(followedId)
        def following = User.get(followingId)
        def follow = Follow.findByFollowedAndFollowing(followed, following)
        follow.delete()
    }

    def doFollow(followedId, followingId) {
        def followed = User.get(followedId)
        def following = User.get(followingId)
        def follow = new Follow(followed: followed, following: following)
        follow.save()
    }

}
