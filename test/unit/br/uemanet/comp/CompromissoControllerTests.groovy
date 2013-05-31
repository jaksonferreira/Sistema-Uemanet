package br.uemanet.comp



import org.junit.*
import grails.test.mixin.*

@TestFor(CompromissoController)
@Mock(Compromisso)
class CompromissoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/compromisso/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.compromissoInstanceList.size() == 0
        assert model.compromissoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.compromissoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.compromissoInstance != null
        assert view == '/compromisso/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/compromisso/show/1'
        assert controller.flash.message != null
        assert Compromisso.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/compromisso/list'

        populateValidParams(params)
        def compromisso = new Compromisso(params)

        assert compromisso.save() != null

        params.id = compromisso.id

        def model = controller.show()

        assert model.compromissoInstance == compromisso
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/compromisso/list'

        populateValidParams(params)
        def compromisso = new Compromisso(params)

        assert compromisso.save() != null

        params.id = compromisso.id

        def model = controller.edit()

        assert model.compromissoInstance == compromisso
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/compromisso/list'

        response.reset()

        populateValidParams(params)
        def compromisso = new Compromisso(params)

        assert compromisso.save() != null

        // test invalid parameters in update
        params.id = compromisso.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/compromisso/edit"
        assert model.compromissoInstance != null

        compromisso.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/compromisso/show/$compromisso.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        compromisso.clearErrors()

        populateValidParams(params)
        params.id = compromisso.id
        params.version = -1
        controller.update()

        assert view == "/compromisso/edit"
        assert model.compromissoInstance != null
        assert model.compromissoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/compromisso/list'

        response.reset()

        populateValidParams(params)
        def compromisso = new Compromisso(params)

        assert compromisso.save() != null
        assert Compromisso.count() == 1

        params.id = compromisso.id

        controller.delete()

        assert Compromisso.count() == 0
        assert Compromisso.get(compromisso.id) == null
        assert response.redirectedUrl == '/compromisso/list'
    }
}
