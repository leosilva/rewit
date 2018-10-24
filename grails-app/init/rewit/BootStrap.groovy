package rewit

class BootStrap {

    def init = { servletContext ->
        def user1 = new User(username: "mariajose")
        user1 = user1.save()
        def r1 = new Rewit(message: "Mensagem 1", user: user1)
        def r2 = new Rewit(message: "Mensagem 2", user: user1)
        def r3 = new Rewit(message: "Mensagem 3", user: user1)
        r1.save()
        r2.save()
        r3.save()

        def user2 = new User(username: "joaomaria")
        user2 = user2.save()

        def r4 = new Rewit(message: "Mensagem 1", user: user2)
        def r5 = new Rewit(message: "Mensagem 2", user: user2)
        def r6 = new Rewit(message: "Mensagem 3", user: user2)
        r4.save()
        r5.save()
        r6.save()

        def user3 = new User(username: "franciscosilva")
        user3 = user3.save()

        def r7 = new Rewit(message: "Mensagem 1", user: user3)
        def r8 = new Rewit(message: "Mensagem 2", user: user3)
        def r9 = new Rewit(message: "Mensagem 3", user: user3)
        r7.save()
        r8.save()
        r9.save()

        def f1 = new Follow(follower: user1, following: user2)
        def f2 = new Follow(follower: user1, following: user3)
        def f3 = new Follow(follower: user2, following: user3)
        def f4 = new Follow(follower: user3, following: user2)
        def f5 = new Follow(follower: user3, following: user1)

        f1.save()
        f2.save()
        f3.save()
        f4.save()
        f5.save()

    }
    def destroy = {
    }
}
