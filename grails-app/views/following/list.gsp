<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Rewit!</title>
</head>
<body>

<!--==========================
          Following List Section
        ============================-->
<section id="follow" class="wow">
    <div class="container">
        <div class="section-header">
            <h2><g:message code="following.label" /></h2>
        </div>

        <div class="row">
            <ul>
                <g:each in="${followList}">
                    <li>${it.followed.username} <g:link controller="follow" action="unfollow" title="Não seguir" params="[userId: it.followed.id]"><i class="fa fa-arrow-left"></i></g:link></li>
                </g:each>
            </ul>
        </div>
    </div>

    <div class="container mt-4">
        <div class="section-header">
            <h2><g:message code="notFollowing.label" /></h2>
        </div>

        <div class="row">
            <ul>
                <g:each in="${usersNotFollowing}">
                    <li>${it.username} <g:link controller="follow" action="follow" title="Seguir" params="[userId: it.id]"><i class="fa fa-arrow-right"></i></g:link></li>
                </g:each>
            </ul>
        </div>
    </div>
</section><!-- #Following -->

</body>
</html>