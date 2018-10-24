<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Rewit!</title>
</head>
<body>

<!--==========================
      Services Section
    ============================-->
<section id="services">
    <div class="container">
        <div class="section-header">
            <h2><g:message code="rewit.timeline.title.label"/></h2>
        </div>

        <div class="row">
            <g:if test="${session.user}">

                <g:each in="${timeline}">
                    <div class="col-lg-12">
                        <div class="box wow fadeInLeft">
                            <div class="icon"><i class="fa fa-quote-left"></i></div>
                            <h4 class="title">${it.user.username} <span>${it.dateCreated}</span></h4>
                            <p class="description">${it.message}</p>
                            <p></p>
                        </div>
                    </div>
                </g:each>
            </g:if>
            <g:else>
                <div class="col-lg-12">
                    <div class="box wow fadeInLeft">
                        <div class="icon"><i class="fa fa-quote-left"></i></div>
                        <p class="description">Sem mensagens.</p>
                    </div>
                </div>
            </g:else>

        </div>

    </div>
</section><!-- #services -->

</body>
</html>
