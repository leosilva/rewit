<!--
    Arquivo que representa o cabeçalho da aplicação, com o seu nome e o menu.
-->
<!--==========================
    Header
  ============================-->
<header id="header">
    <div class="container">

        <div id="logo" class="pull-left">
            <!-- Nome da aplicação-->
            <h1>
                <g:link controller="menu" action="timeline">Re<span>wit</span></g:link>
            </h1>
        </div>

        <nav id="nav-menu-container">
            <!-- Menu -->
            <ul class="nav-menu">
                <!-- Se o parâmetro 'active' for igual a 'timeline'
                     ou não existir, coloque a classe CSS 'menu-active',
                     caso contrário, coloque ''.
                -->
                <li class="${active == 'timeline' || !active ? 'menu-active': ''}">
                    <g:link controller="menu" action="timeline">
                        <g:message code="timeline.label"/>
                    </g:link>
                </li>
                <!-- Se houver a variável user na sessão e esta for
                     diferente de nulo, renderize estes itens do menu.
                -->
                <g:if test="${session.user}">
                    <!-- Se o parâmetro 'active' for igual a 'rewit',
                     coloque a classe CSS 'menu-active', caso contrário,
                     coloque ''.
                    -->
                    <li class="${active == 'rewit' ? 'menu-active': ''}">
                        <g:link controller="menu" action="newRewit">
                            <g:message code="menu.rewit.label" />
                        </g:link>
                    </li>
                    <!-- Se o parâmetro 'active' for igual a 'followers',
                     coloque a classe CSS 'menu-active', caso contrário,
                     coloque ''.
                    -->
                    <li class="${active == 'followers' ? 'menu-active': ''}">
                        <g:link controller="menu" action="listFollowers">
                            <g:message code="followers.label" />
                        </g:link>
                    </li>
                    <!-- Se o parâmetro 'active' for igual a 'following',
                     coloque a classe CSS 'menu-active', caso contrário,
                     coloque ''.
                    -->
                    <li class="${active == 'following' ? 'menu-active': ''}">
                        <g:link controller="menu" action="listFollowing">
                            <g:message code="following.label" />
                        </g:link>
                    </li>
                </g:if>
                <!-- Se o parâmetro 'active' for igual a 'about',
                     coloque a classe CSS 'menu-active', caso contrário,
                     coloque ''.
                -->
                <li class="${active == 'about' ? 'menu-active': ''}">
                    <g:link controller="menu" action="about">
                        <!--<g:message code="about.label" />-->
                        Sobre
                    </g:link>
                </li>
                <!-- Se o parâmetro 'active' for igual a 'login',
                     coloque a classe CSS 'menu-active', caso contrário,
                     coloque ''.
                -->
                <li class="${active == 'login' ? 'menu-active': ''}">
                    <!-- Se houver a variável user na sessão e esta for
                         diferente de nulo, mostre o username do usuário
                         e um link para ele sair.
                    -->
                    <g:if test="${session.user}">
                        ${session.user.username} (<g:link controller="login" action="doLogout" class="pl-0 pr-0"><g:message code="menu.signout.label" /></g:link>)
                    </g:if>
                    <g:else>
                        <!-- Caso contrário, exiba um link para o usuário
                             realizar o login.
                        -->
                        <g:link controller="menu" action="login">
                            <g:message code="menu.signin.label" />
                        </g:link>
                    </g:else>
                </li>
            </ul>
        </nav><!-- #nav-menu-container -->
    </div>
</header><!-- #header -->