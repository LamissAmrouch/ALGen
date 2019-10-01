<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .general-container {
        display: inline-block;
        width: 100%;
        padding-left: 60px;
        padding-right: 60px;

    }

    .nav-link { padding: 0 12px 10px 8px;
        text-decoration: none;
        display: inline-block;
        margin-left: 10px;
        color: #fff;
        font-family: 'Montserrat', sans-serif;
        font-weight: 700;
        font-size: 13px;
        text-transform: uppercase;
        outline: none;
    margin-bottom: 20px;}

    .nav {
        max-height: 80px;
        padding-right: 0;
        padding-left: 0;
    }

    .nav li {
        float: left;
    }
    
    .items-block {
        float: right;

        }

    .img-logo {
        float: left;
        margin-top: 20px;

    }

    .drop1 {
        padding-left: 5px;
        padding-right: 5px;
        text-decoration: none;
        display: inline-block;
        color: #000;
        font-family: 'Montserrat', sans-serif;
        font-weight: 700;
        font-size: 13px;
        outline: none;

    }
</style>

<div class="general-container bg-primary">
<div class="img-logo" style="padding-left: 30px;">
    <!-- Uncomment below if you prefer to use an image logo -->
    <a href="/"><img src="img/Algen-Logo.png" alt="" title="" style="height: 40px; max-height: 40px;padding:0; margin: 0; display: inline-block;
"></a>
</div>

<ul class="nav navbar-dark bg-primary nav-pills justify-content-sm-end  header" style=" padding-top: 30px; ">
    <div class="items-block">
        <li class="nav-item">
            <a class="nav-link dropdown-toggle" data-toggle="dropdown"
               href="../users" role="button" aria-haspopup="true" aria-expanded="false">Utilisateurs</a>
            <div class="dropdown-menu">
                <a class="dropdown-item drop1" href="/users">Utilisateurs</a>
                <a class="dropdown-item drop1 " href="/roles">Roles</a>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link " href="/rgs">Ressources</a>
        </li>
        <li class="nav-item">
            <a class="nav-link " href="/procs">CTA</a>
        </li>
        <li class="nav-item">
            <a class="nav-link " href="/classifs">Classification</a>
        </li>
        <li class="nav-item">
            <a class="nav-link " href="/institutions">Institutions</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/lois">Lois</a>
        </li>
        <c:if test="${logged}">
            <li class="menu-has-children"><a href="#">${user.getNom()}</a>
                <ul>

                    <li><a href="/logout">Se Déconnecter</a></li>

                </ul>
            </li>

        </c:if>
        <c:if test="${!logged}">
            <li><a href="/login">Se Connecter</a></li>
        </c:if>
    </div>
    </ul>
</div>