Quando("eu logo na aplicação e crio uma nova atividade.") do

    app.load
    app.preencher
    app.login
    app.simulado
    app.novaAtividade
    app.nomeSimulado
    app.proximo
    app.matematica
    check('tag-4645', allow_label_click: true)
    check('tag-110', allow_label_click: true)
    check('tag-3188', allow_label_click: true)
    check('tag-5991', allow_label_click: true)
    check('tag-325', allow_label_click: true)
    app.next2
    app.questoes
    sleep(2)
    app.next3
    find(:xpath, "//input[@id='end_time__date']").click
    sleep(2)
# Define dia de término da ativiadde    
    find(:xpath, "//div[@class='picker__calendar-container']/table[@id='end_time__date_table']/tbody/tr[5]//td[3]/div[@class='picker__day picker__day--infocus']").click
    sleep(2)
    find(:xpath, "//div[@id='end_time__date_root']//div[@class='picker__holder']//div[@class='picker__frame']/div[@class='picker__wrap']/div[@class='picker__box']/div[@class='picker__footer']/button[@class='btn-flat picker__close']").click
    sleep(2)
    find(:xpath, "//input[@id='start_time__date']").click
    sleep(2)
# Define dia de início da atividade
    find(:xpath, "//table[@id='start_time__date_table']/tbody/tr[3]/td[3]/div[@class='picker__day picker__day--infocus picker__day--today picker__day--selected picker__day--highlighted']").click
    sleep(2)
    find(:xpath, "//div[@id='start_time__date_root']/div[@class='picker__holder']/div[@class='picker__frame']/div[@class='picker__wrap']/div[@class='picker__box']/div[@class='picker__footer']/button[@class='btn-flat picker__close']").click
    sleep(2)
    find(:xpath, "//input[@id='end_time__time']").click
    sleep(2)
# Define hora de término da atividade   Hora desejada -1
    find(:xpath, "//div[@class='clockpicker-tick'][24]").click
    sleep(2)
# Define minutos do término da atividade   
    find(:xpath, "//div[@class='clockpicker-dial clockpicker-minutes']//div[@class='clockpicker-tick'][12]").click
    sleep(2)
    find(:xpath, "//input[@id='start_time__time']").click
    sleep(2)
# Define hora de início da atividade  Hora desejada -1
    find(:xpath, "//div[@class='clockpicker-dial clockpicker-hours']/div[@class='clockpicker-tick'][13]").click
    sleep(2)
# Define minutos de início da atividade     
    find(:xpath, "//div[@class='clockpicker-dial clockpicker-minutes']/div[@class='clockpicker-tick'][12]").click
    sleep(2)
    click_on('save_as_draft_button')
    sleep(2)
    click_on('sidebar-mocks')
    first(:xpath, '//*[@title="Teste Proposto"]').click
    click_on('publish-button')

    within('#publish-modal') do

      find(:xpath, "//a[@class='modal-action modal-close waves-effect btn-flat primary-color']").click
    
    end

    sleep(5)

end     

Entao("eu valido se nova atividade foi criado com sucesso.") do
    
    expect(page).to have_current_path("http://professor.homolog.fund.appprova.com.br/mocks", url: true)

end