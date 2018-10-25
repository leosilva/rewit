package rewit

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class RewitController {

    RewitService rewitService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def save(Rewit rewit) {
        if (rewit == null) {
            notFound()
            return
        }

        try {
            // adicionando o usuario da sessao como autor do rewit
            rewit.user = session.user
            rewitService.save(rewit)
        } catch (ValidationException e) {
            respond rewit.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'rewit.label', default: 'Rewit'), rewit.id])
                redirect(controller: 'menu', action: 'timeline')
            }
            '*' { respond rewit, [status: CREATED] }
        }
    }

    def replicate() {
        def originalRewit = Rewit.get(params.rewitId)
        def message = g.message(code: 'rewit.replicate.default.message', args: [originalRewit.user.username, originalRewit.message])
        def rewit = new Rewit(message: message)
        save(rewit)
    }

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
