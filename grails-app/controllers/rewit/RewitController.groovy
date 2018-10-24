package rewit

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class RewitController {

    RewitService rewitService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond rewitService.list(params), model:[rewitCount: rewitService.count()]
    }

    def create() {
        respond new Rewit(params)
    }

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
                redirect(controller: 'timeline', action: 'index')
            }
            '*' { respond rewit, [status: CREATED] }
        }
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
