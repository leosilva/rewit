package rewit

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class RewitServiceSpec extends Specification {

    RewitService rewitService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Rewit(...).save(flush: true, failOnError: true)
        //new Rewit(...).save(flush: true, failOnError: true)
        //Rewit rewit = new Rewit(...).save(flush: true, failOnError: true)
        //new Rewit(...).save(flush: true, failOnError: true)
        //new Rewit(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //rewit.id
    }

    void "test get"() {
        setupData()

        expect:
        rewitService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Rewit> rewitList = rewitService.list(max: 2, offset: 2)

        then:
        rewitList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        rewitService.count() == 5
    }

    void "test delete"() {
        Long rewitId = setupData()

        expect:
        rewitService.count() == 5

        when:
        rewitService.delete(rewitId)
        sessionFactory.currentSession.flush()

        then:
        rewitService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Rewit rewit = new Rewit()
        rewitService.save(rewit)

        then:
        rewit.id != null
    }
}
