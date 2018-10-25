package rewit

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class RewitController {

    RewitService rewitService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    /**
     * Actio padrão para salvar um objeto Rewit.
     * @param rewit
     * @return
     */
    def save(Rewit rewit) {
        /*
         * Implemente aqui a ação de salvar um rewit no banco de dados (questão 3).
         * Consule outros códigos para se basear, como o UserController.
         */
    }

    /**
     * Action que efetua a replicação de um rewit a partir da postagem
     * original de um dos usuários que o usuário da sessão segue.
     * @return
     */
    def replicate() {
        // recupera o rewit original do banco de dados
        def originalRewit = Rewit.get(params.rewitId)
        // cria a nova mensagem, que possui um formato específico.
        def message = g.message(code: 'rewit.replicate.default.message', args: [originalRewit.user.username, originalRewit.message])
        // cria o novo objeto rewit.
        def rewit = new Rewit(message: message)
        // chama a ação salvar.
        save(rewit)
    }

    /**
     * Método padrão que indica que determinado objeto rewit não foi encontrado.
     */
    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'rewit.label', default: 'Rewit'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
