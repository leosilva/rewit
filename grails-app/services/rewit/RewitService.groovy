package rewit

import grails.gorm.services.Service

@Service(Rewit)
interface RewitService {

    Rewit get(Serializable id)

    List<Rewit> list(Map args)

    Long count()

    void delete(Serializable id)

    Rewit save(Rewit rewit)

}