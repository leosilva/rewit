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
            <h2><g:message code="timeline.label"/></h2>
        </div>

        <div class="row">
            <g:if test="${session.user}">
                <g:if test="${!rewitList}" >
                    <div class="col-lg-12">
                        <div class="box wow pb-3 pt-3">
                            <div class="icon"><i class="fa fa-quote-left"></i></div>
                            <p class="description">Sem mensagens.</p>
                        </div>
                    </div>
                </g:if>
                <g:else>
                    <g:each in="${rewitList}">
                        <div class="col-lg-12">
                            <div class="box wow pb-3 pt-3">
                                <div class="icon"><i class="fa fa-quote-left"></i></div>
                                <h4 class="title">
                                    ${it.user.username} <span><g:formatDate date="${it.dateCreated}" type="datetime" style="MEDIUM" timeStyle="MEDIUM"/></span>
                                </h4>
                                <p class="description">${it.message.encodeAsRaw()}</p>
                                <div class="divReplicateButton">
                                    <g:form controller="rewit" action="replicate" method="POST">
                                        <g:hiddenField name="rewitId" value="${it.id}" />
                                        <g:submitButton name="replicateButton" value="${message(code:'rewit.replicate.label')}" class="link"/>
                                    </g:form>
                                </div>
                            </div>
                        </div>
                    </g:each>
                </g:else>
            </g:if>
            <g:else>
                <div class="col-lg-12">
                    <div class="box wow pb-3 pt-3">
                        <div class="icon"><i class="fa fa-quote-left"></i></div>
                        <p class="description">Sem mensagens.</p>
                    </div>
                </div>
            </g:else>

        </div>

    </div>
</section><!-- #Timeline -->

</body>
</html>
