class Professor < SitePrism::Page

    set_url '/teachers/sign_in'
    element :usuario, '#teacher_email'
    element :senha, '#teacher_password'
    element :entrar, '#teacher-login'
    element :simulados, '.btn.green.darken-3.white-text.waves-effect'
    element :atividade, '#sidebar-mocks'
#    element :simuladoCampo, '.btn.green.darken-3.white-text.waves-effect'
    element :simuladoName, '#mock_name'
    element :avancar, '#wizard-form__submit-button'
    element :disciplina, 'li[data-subgroup-id="30"]'
    element :avancar2, :xpath, ("//div[@class='next-action']//a[@class='waves-effect waves-light btn-large']")
    element :q1, :xpath, ("//div[@class='col s12 no-padding']/div[@class='question-box z-depth-1 white question-69610']/div[@class='question-box__actions-wrapper']/div[@class='btn add-question']")
    element :q2, :xpath, ("//div[@class='col s12 no-padding']/div[@class='question-box z-depth-1 white question-69608']/div[@class='question-box__actions-wrapper']/div[@class='btn add-question']")
    element :q3, :xpath, ("//div[@class='col s12 no-padding']/div[@class='question-box z-depth-1 white question-69557']/div[@class='question-box__actions-wrapper']/div[@class='btn add-question']")
    element :q4, :xpath, ("//div[@class='col s12 no-padding']/div[@class='question-box z-depth-1 white question-69556']/div[@class='question-box__actions-wrapper']/div[@class='btn add-question']")
    element :q5, :xpath, ("//div[@class='col s12 no-padding']/div[@class='question-box z-depth-1 white question-69553']/div[@class='question-box__actions-wrapper']/div[@class='btn add-question']")
    element :avancar3, :xpath, ("//div[@class='next-action']/a[@class='waves-effect waves-light btn-large']")
    element :horaFim, :xpath, ("//input[@id='end_time__time']")
    element :hora00, :xpath, ("//div[@class='clockpicker-tick'][24]")
    element :min12, :xpath, ("//div[@class='clockpicker-dial clockpicker-minutes']//div[@class='clockpicker-tick'][12]")
    element :horaInicio, :xpath, ("//input[@id='start_time__time']")
    element :hora23, :xpath, ("//div[@class='clockpicker-dial clockpicker-hours']/div[@class='clockpicker-tick'][23]")
    element :min10, :xpath, ("//div[@class='clockpicker-dial clockpicker-minutes']/div[@class='clockpicker-tick'][10]")
    element '#save_as_draft_button'
    element '#sidebar-mocks'
    element :xpath, ('//*[@title="Teste Proposto"]')
    element '#publish-button'

#    within('#publish-modal') do
#
#      find(:xpath, "//a[@class='modal-action modal-close waves-effect btn-flat primary-color']")


    def preencher

        usuario.set 'qa@appprova.com.br'
        senha.set 'loveqaatappprova'

    end

    def login

        entrar.click

    end

    def simulado
        
        atividade.click

    end

    def novaAtividade

        simulados.click

    end

    def nomeSimulado

        simuladoName.send_keys 'Teste Proposto'

    end

    def campoClick

        simuladoCampo.click

    end

    def proximo

        avancar.click

    end

    def matematica

        disciplina.click

    end

    def next2

        avancar2.click

    end

    def questoes

        q1.click
        q2.click
        q3.click
        q4.click
        q5.click
    end

    def next3
        
        avancar3.click

    end

    def setar

    horaFim.click
    hora00.click
    min12.click
    horaInicio.click 
    hora23.click
    min10.click

    end

end