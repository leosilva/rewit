<!--
    Documento GSP que cria um novo rewit.
-->
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Rewit!</title>
</head>
<body>

    <!--==========================
          Rewit Section
        ============================-->
    <section id="rewit" class="wow">
        <div class="container">
            <div class="section-header">
                <!-- Título da Seção -->
                <h2><g:message code="rewit.title.label" /></h2>
            </div>
        </div>

        <div class="container">
            <div class="form">
                <!-- Formulário que será submetido para o controlador e
                     ação indicadas -->
                <g:form controller="rewit" action="save" method="post" role="form" class="contactForm">
                    <div class="form-group">
                        <!-- Campo onde a mensagem do rewit será digitada -->
                        <textarea class="form-control" name="message" rows="5" required placeholder="${message(code: 'rewit.placeholder.message')}"></textarea>
                    </div>
                    <div class="text-center">
                        <!-- Botão de envio -->
                        <button type="submit">
                            <g:message code="rewit.button.send.label" />
                        </button>
                    </div>
                </g:form>
            </div>

        </div>
    </section><!-- #rewit -->

</body>
</html>