<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Rewit!</title>
</head>
<body>

    <section id="rewit" class="wow fadeInUp">
        <div class="container">
            <div class="section-header">
                <h2><g:message code="login.title.label" /></h2>
            </div>
        </div>

        <div class="container">
            <div class="form">
                <g:form action="doLogin" method="post" role="form" class="contactForm" controller="login">
                    <div class="form-group">
                        <g:textField class="form-control" name="username" data-rule="required" data-msg="${message(code: 'rewit.required.error.message')}" placeholder="${message(code: 'username.placeholder.message')}">
                        </g:textField>
                        <div class="validation"></div>
                    </div>
                    <div class="text-center">
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
