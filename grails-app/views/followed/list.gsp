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
            <h2><g:message code="followers.label" /></h2>
        </div>

        <div class="row">
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