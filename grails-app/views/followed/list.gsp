<!--
    Documento GSP que lista todos os seguidores do usuário da sessão.
-->
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Rewit!</title>
</head>
<body>

<!--==========================
          Followed List Section
        ============================-->
<section id="follow" class="wow">
    <div class="container">
        <div class="section-header">
            <!-- Título da Seção -->
            <h2><g:message code="followers.label" /></h2>
        </div>

        <div class="row">
            <!-- Lista não ordenada que exibe o username dos usuários -->
            <ul>
                <g:each in="${followList}">
                    <li>${it.following.username}</li>
                </g:each>
            </ul>
        </div>
    </div>
</section><!-- #followed -->

</body>
</html>