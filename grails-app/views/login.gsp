<!--
    Arquivo que representa a página do login. Essa funcionalidade não
    exige senha, basta informar o nome de usuário.
-->
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Rewit!</title>
</head>
<body>
    <!--==========================
      Login Section
    ============================-->
    <section id="login" class="wow">
        <div class="container">
            <div class="section-header">
                <!-- Título da Seção -->
                <h2><g:message code="login.title.label" /></h2>
            </div>
        </div>

        <div class="container">
            <div class="form">
                <!-- Formulário de login, enviado para o controlador e
                     action especificados
                -->
                <g:form action="doLogin" method="post" role="form" class="contactForm" controller="login">
                    <div class="form-group">
                        <!-- campo de texto para o username -->
                        <g:textField class="form-control" name="username" required placeholder="${message(code: 'username.placeholder.message')}">
                        </g:textField>
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
    </section>

</body>
</html>
