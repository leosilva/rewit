package rewit

class MenuController {

    FollowService followService

    /**
     * Action que retorna o documento da página de login.
     * @return
     */
    def login() {
        render view: '/login', model: [active: 'login']
    }

    /**
     * Action que retorna a timeline do usuário da sessão. A timeline
     * é formada por todas as postagens dos usuários que o usuário da
     * sessão segue.
     * @return
     */
    def timeline() {
        def timeline = []
        // se houver usuário na sessão
        if (session.user) {
            // recupera todos os usuários que o da sessão segue.
            def follows = followService.listFollowing(session.user)
            // para cada um dos encontrados...
            follows.each { f ->
                // adicione os rewits à timeline
                timeline += Rewit.findAllByUser(f.followed)
            }
        }
        // ordena a timeline pela postagem mais recente.
        timeline = timeline.sort { it.dateCreated }.reverse()
        /* na GSP, a variável para acessar a lista 'timeline' se chama
         * rewitList */
        respond timeline, view :'/index', model: [active: 'timeline']
    }

    /**
     * Action que retorna o documento da página de criação de um rewit.
     * @return
     */
    def newRewit() {
        respond new Rewit(params), view :'/rewit/create', model: [active: 'rewit']
    }

    /**
     * Action que recupera a lista de todos os seguidores e retorna
     * o documento responsável por exibir essa lista.
     * @return
     */
    def listFollowers() {
        /*
         * Implemente aqui o código da questão 2. Considere consultar outras
         * ações neste controlador.
         */
    }

    def listFollowing() {
        /* recupera, da classe de serviço, todos os usuários
         * que o usuário da sessão segue */
        def following = followService.listFollowing(session.user)
        /* recupera, da classe de serviço, todos os usuários
         * que o usuário da sessão não segue */
        def notFollowing = followService.listNotFollowing(session.user)
        /* na GSP, a variável para acessar a lista 'following' se chama
         * followList */
        respond following, view: '/following/list', model: [active: 'following', usersNotFollowing: notFollowing]
    }

    /**
     * Action que retorna o documento da página de about.
     * @return
     */
    def about() {
        render view : '/about', model: [active: 'about']
    }
}
