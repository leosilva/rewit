package rewit

class LoginController {

    def login() {
        render view: '/login'
    }

    def doLogin() {
        def user = User.findByUsername(params.username)
        // adicionando um usuario na sessao
        session.user = user
        redirect(controller: 'timeline', action: 'index')
    }

    def doLogout() {
        if (session.user) {
            // removendo o usuario da sessao
            session.user = null
            // invalidando a sessao
            session.invalidate()
        }
        redirect(controller: 'timeline', action: 'index')
    }
}
