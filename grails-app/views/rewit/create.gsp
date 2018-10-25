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
                <h2><g:message code="rewit.title.label" /></h2>
            </div>
        </div>

        <div class="container">
            <div class="form">
                <g:form action="save" method="post" role="form" class="contactForm" controller="rewit">
                    <div class="form-group">
                        <textarea class="form-control" name="message" rows="5" required placeholder="${message(code: 'rewit.placeholder.message')}"></textarea>
                    </div>
                    <div class="text-center">
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