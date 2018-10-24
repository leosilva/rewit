<!--==========================
    Header
  ============================-->
<header id="header">
    <div class="container">

        <div id="logo" class="pull-left">
            <h1>
                <g:link controller="timeline" action="index">Re<span>wit</span></g:link>
            </h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="#body"><img src="img/logo.png" alt="" title="" /></a>-->
        </div>

        <nav id="nav-menu-container">
            <ul class="nav-menu">
                <li class="menu-active">
                    <g:link controller="timeline" action="index">
                        <g:message code="menu.timeline.label"/>
                    </g:link>
                </li>
                <g:if test="${session.user}">
                    <li>
                        <g:link controller="rewit" action="create">
                            <g:message code="menu.rewit.label" />
                        </g:link>
                    </li>
                    <li>
                        <g:link controller="follower" action="list">
                            <g:message code="menu.followers.label" />
                        </g:link>
                    </li>
                    <li>
                        <a href="#portfolio"><g:message code="menu.following.label" /></a>
                    </li>
                </g:if>
                <li>
                    <a href="#team"><g:message code="menu.about.label" /></a>
                </li>
                <li>
                    <g:if test="${session.user}">
                        ${session.user.username} (<g:link controller="login" action="doLogout"><g:message code="menu.signout.label" /></g:link>)
                    </g:if>
                    <g:else>
                        <g:link controller="login" action="login">
                            <g:message code="menu.signin.label" />
                        </g:link>
                    </g:else>
                </li>
            </ul>
        </nav><!-- #nav-menu-container -->
    </div>
</header><!-- #header -->