<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Rewit!</title>
</head>
<body>

<!--==========================
          Follow List Section
        ============================-->
<section id="rewit" class="wow fadeInUp">
    <div class="container">
        <div class="section-header">
            <h2><g:message code="followers.title.label" /></h2>
        </div>

        <div class="row">
            <ul>
                <g:each in="${followers}">
                    <li>${it.following.username}</li>
                </g:each>
            </ul>
        </div>
    </div>
</section><!-- #follower -->

</body>
</html>