<!--==========================
    Header
  ============================-->
<header id="header">
    <div class="container">

        <div id="logo" class="pull-left">
            <h1>
                <g:link controller="menu" action="timeline">Re<span>wit</span></g:link>
            </h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="#body"><img src="img/logo.png" alt="" title="" /></a>-->
        </div>

        <nav id="nav-menu-container">
            <ul class="nav-menu">
                <li class="${active == 'timeline' ? 'menu-active': ''}">
                    <g:link controller="menu" action="timeline">
                        <g:message code="timeline.label"/>
                    </g:link>
                </li>
                <g:if test="${session.user}">
                    <li class="${active == 'rewit' ? 'menu-active': ''}">
                        <g:link controller="menu" action="newRewit">
                            <g:message code="menu.rewit.label" />
                        </g:link>
                    </li>
                    <li class="${active == 'followers' ? 'menu-active': ''}">
                        <g:link controller="menu" action="listFollowers">
                            <g:message code="followers.label" />
                        </g:link>
                    </li>
                    <li class="${active == 'following' ? 'menu-active': ''}">
                        <g:link controller="menu" action="listFollowing">
                            <g:message code="following.label" />
                        </g:link>
                    </li>
                </g:if>
                <li class="${active == 'about' ? 'menu-active': ''}">
                    <g:link controller="menu" action="about">
                        <g:message code="about.label" />
                    </g:link>
                </li>
                <li class="${active == 'login' ? 'menu-active': ''}">
                    <g:if test="${session.user}">
                        ${session.user.username} (<g:link controller="login" action="doLogout" class="pl-0 pr-0"><g:message code="menu.signout.label" /></g:link>)
                    </g:if>
                    <g:else>
                        <g:link controller="menu" action="login">
                            <g:message code="menu.signin.label" />
                        </g:link>
                    </g:else>
                </li>
            </ul>
        </nav><!-- #nav-menu-container -->
    </div>
</header><!-- #header -->