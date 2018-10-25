<!--
    Arquivo que representa a página principal da aplicação,
    onde é exibida a timeline do usuário da sessão.
-->
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Rewit!</title>
</head>
<body>

<!--==========================
      Timeline Section
    ============================-->
<section id="timeline">
    <div class="container">
        <div class="section-header">
            <!-- Título da Seção -->
            <h2><g:message code="timeline.label"/></h2>
        </div>

        <div class="row">
            <!-- Se houver a variável user na sessão e esta for
                 diferente de nulo, renderize a timeline do usuário.
            -->
            <g:if test="${session.user}">
                <!-- Se a variável 'rewitList' for nula ou vazia,
                     mostre uma mensagem genérica.
                -->
                <g:if test="${!rewitList}" >
                    <div class="col-lg-12">
                        <div class="box wow pb-3 pt-3">
                            <!-- Ícone das aspas -->
                            <div class="icon"><i class="fa fa-quote-left"></i></div>
                            <p class="description">
                                <g:message code="noMessages.message"/>
                            </p>
                        </div>
                    </div>
                </g:if>
                <g:else>
                    <!-- Se a variável 'rewitList' existir, faça um each
                         na variável.
                    -->
                    <g:each in="${rewitList}">
                        <div class="col-lg-12">
                            <!-- Para cada mensagem, crie uma div que representa uma postagem.
                            -->
                            <div class="box wow pb-3 pt-3">
                                <!-- Ícone das aspas -->
                                <div class="icon"><i class="fa fa-quote-left"></i></div>
                                <!-- Exibe o nome do usuário que postou a mensagem,
                                     juntamente com a data e hora.
                                -->
                                <h4 class="title">
                                    ${it.user.username} <span><g:formatDate date="${it.dateCreated}" type="datetime" style="MEDIUM" timeStyle="MEDIUM"/></span>
                                </h4>
                                <!-- Exibe a mensagem em si -->
                                <p class="description">${it.message.encodeAsRaw()}</p>
                                <!-- Elemento responsável por fazer a replicação da mensagem -->
                                <div class="divReplicateButton">
                                    <g:form controller="rewit" action="replicate" method="POST">
                                        <!-- O formulário envia um elemento escondido, contendo
                                             o id do rewit a ser replicado.
                                        -->
                                        <g:hiddenField name="rewitId" value="${it.id}" />
                                        <!-- Botão que envia o formulário, renderizado em formato de link -->
                                        <g:submitButton name="replicateButton" value="${message(code:'rewit.replicate.label')}" class="link"/>
                                    </g:form>
                                </div>
                            </div>
                        </div>
                    </g:each>
                </g:else>
            </g:if>
            <g:else>
                <!-- Se não houver usuário na sessão, exibe mensagem genérica.
                -->
                <div class="col-lg-12">
                    <div class="box wow pb-3 pt-3">
                        <div class="icon"><i class="fa fa-quote-left"></i></div>
                        <p class="description">
                            <g:message code="noMessages.message"/>
                        </p>
                    </div>
                </div>
            </g:else>

        </div>

    </div>
</section><!-- #Timeline -->

</body>
</html>
