package rewit

class BootStrap {

    def init = { servletContext ->
        // criação de usuário
        def user1 = new User(username: "mariajose")
        // salvando no banco
        user1 = user1.save()
        // criação de 3 rewits para esse usuário
        def r1 = new Rewit(message: "Mensagem 1", user: user1)
        def r2 = new Rewit(message: "Mensagem 2", user: user1)
        def r3 = new Rewit(message: "Mensagem 3", user: user1)
        // salvando no banco
        r1.save()
        r2.save()
        r3.save()

        // criação de usuário
        def user2 = new User(username: "joaomaria")
        // salvando no banco
        user2 = user2.save()

        // criação de 3 rewits para esse usuário
        def r4 = new Rewit(message: "Mensagem 1", user: user2)
        def r5 = new Rewit(message: "Mensagem 2", user: user2)
        def r6 = new Rewit(message: "Mensagem 3", user: user2)
        // salvando no banco
        r4.save()
        r5.save()
        r6.save()

        // criação de usuário
        def user3 = new User(username: "franciscosilva")
        // salvando no banco
        user3 = user3.save()

        // criação de 3 rewits para esse usuário
        def r7 = new Rewit(message: "Mensagem 1", user: user3)
        def r8 = new Rewit(message: "Mensagem 2", user: user3)
        def r9 = new Rewit(message: "Mensagem 3", user: user3)
        // salvando no banco
        r7.save()
        r8.save()
        r9.save()

        // user2 segue user1
        def f1 = new Follow(followed: user1, following: user2)
        // user3 segue user1
        def f2 = new Follow(followed: user1, following: user3)
        // user3 segue user2
        def f3 = new Follow(followed: user2, following: user3)
        // user2 segue user3
        def f4 = new Follow(followed: user3, following: user2)
        // user1 segue user3
        def f5 = new Follow(followed: user3, following: user1)

        // salvando no banco
        f1.save()
        f2.save()
        f3.save()
        f4.save()
        f5.save()

    }
    def destroy = {
    }
}
