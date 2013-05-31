package br.uemanet.comp

import org.springframework.dao.DataIntegrityViolationException

class CompromissoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [compromissoInstanceList: Compromisso.list(params), compromissoInstanceTotal: Compromisso.count()]
    }

    def create() {
        [compromissoInstance: new Compromisso(params)]
    }

    def save() {
        def compromissoInstance = new Compromisso(params)
        if (!compromissoInstance.save(flush: true)) {
            render(view: "create", model: [compromissoInstance: compromissoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'compromisso.label', default: 'Compromisso'), compromissoInstance.id])
        redirect(action: "show", id: compromissoInstance.id)
    }

    def show(Long id) {
        def compromissoInstance = Compromisso.get(id)
        if (!compromissoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'compromisso.label', default: 'Compromisso'), id])
            redirect(action: "list")
            return
        }

        [compromissoInstance: compromissoInstance]
    }

    def edit(Long id) {
        def compromissoInstance = Compromisso.get(id)
        if (!compromissoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'compromisso.label', default: 'Compromisso'), id])
            redirect(action: "list")
            return
        }

        [compromissoInstance: compromissoInstance]
    }

    def update(Long id, Long version) {
        def compromissoInstance = Compromisso.get(id)
        if (!compromissoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'compromisso.label', default: 'Compromisso'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (compromissoInstance.version > version) {
                compromissoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'compromisso.label', default: 'Compromisso')] as Object[],
                          "Another user has updated this Compromisso while you were editing")
                render(view: "edit", model: [compromissoInstance: compromissoInstance])
                return
            }
        }

        compromissoInstance.properties = params

        if (!compromissoInstance.save(flush: true)) {
            render(view: "edit", model: [compromissoInstance: compromissoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'compromisso.label', default: 'Compromisso'), compromissoInstance.id])
        redirect(action: "show", id: compromissoInstance.id)
    }

    def delete(Long id) {
        def compromissoInstance = Compromisso.get(id)
        if (!compromissoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'compromisso.label', default: 'Compromisso'), id])
            redirect(action: "list")
            return
        }

        try {
            compromissoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'compromisso.label', default: 'Compromisso'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'compromisso.label', default: 'Compromisso'), id])
            redirect(action: "show", id: id)
        }
    }
}
