package rewit

class LoginController {

    /**
     * Action que efetua o login. Não há autenticação com senha
     * nesse momento. O login se trata de apenas de recuperar
     * o usuário do banco de dados a partir do seu nome de usuário
     * e colocar o objeto no escopo de sessão.
     * @return
     */
    def doLogin() {
        def user = User.findByUsername(params.username)
        // adicionando um usuario na sessao
        session.user = user
        redirect(controller: 'menu', action: 'timeline')
    }

    /**
     * Action que efetua o logout. Remove o usuário da sessão
     * e depois a invalida.
     * @return
     */
    def doLogout() {
        if (session.user) {
            // removendo o usuario da sessao
            session.user = null
            // invalidando a sessao
            session.invalidate()
        }
        redirect(controller: 'menu', action: 'timeline')
    }
}
