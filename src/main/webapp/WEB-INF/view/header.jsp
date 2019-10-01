<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="navbar" style=" width: 100%; background: rgba(24,210,110, 0.8); max-height: 80px; align-items: baseline; padding-top: 0;; margin-top: 0 ;">

    <div id="logo" class="pull-left" style="padding-left: 60px;">
        <!-- Uncomment below if you prefer to use an image logo -->
        <a href="/"><img src="../img/Algen-Logo.png" alt="" title="" style="height: 40px; max-height: 40px;padding:0; margin: 0; display: inline-block;
"></a>
    </div>

    <ul class="nav nav-pills justify-content-center header" style="padding-right:60px;">
        <li class="nav-item">
            <a class="nav-link " STYLE="padding: 0 8px 10px 8px;
    text-decoration: none;
    display: inline-block;
    margin-left: 10px;
    color: #fff;
    font-family: 'Montserrat', sans-serif;
            font-weight: 700;
            font-size: 13px;
            text-transform: uppercase;
            outline: none;" href="./">Accueil</a>
        </li>
        <li class="nav-item">
            <a class="nav-link " STYLE="padding: 0 8px 10px 8px;
    text-decoration: none;
    display: inline-block;
    margin-left: 10px;
    color: #fff;
    font-family: 'Montserrat', sans-serif;
            font-weight: 700;
            font-size: 13px;
            text-transform: uppercase;
            outline: none;" href="/ListInstitution">Institutions</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" STYLE="    padding: 0 8px 10px 8px;
    text-decoration: none;
    display: inline-block;
    margin-left: 10px;
    color: #fff;
    font-family: 'Montserrat', sans-serif;
            font-weight: 700;
            font-size: 13px;
            text-transform: uppercase;
            outline: none;" href="/affichage-lois">Lois</a>
        </li>


        <li id="resources" class="dropdown" >
            <a class="nav-link dropdown-toggle"  id="dropdownMenuButton" data-toggle="dropdown" STYLE="padding: 0 8px 10px 8px;
    text-decoration: none;
    display: inline-block;
    margin-left: 10px;
    color: #fff;
    font-family: 'Montserrat', sans-serif;
            font-weight: 700;
            font-size: 13px;
            text-transform: uppercase;
            outline: none;"  data-toggle="dropdown"
               href="#" role="button" aria-haspopup="true" aria-expanded="false">Ressource</a>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <li><a class="dropdown-item" STYLE="padding: 0 8px 10px 8px;
                    text-decoration: none;
                    display: inline-block;
                    color: #000;
                    font-family: 'Montserrat', sans-serif;
                    font-weight: 700;
                    font-size: 13px;
                    outline: none;"  href="/ListRgForest">Forestieres</a></li>
                <li><a class="dropdown-item" STYLE="padding: 0 8px 10px 8px;
                    text-decoration: none;
                    display: inline-block;
                    color: #000;
                    font-family: 'Montserrat', sans-serif;
                    font-weight: 700;
                    font-size: 13px;
                    outline: none;"  href="/ListRgAlimagricol">Alimentaires</a></li>
                <li><a class="dropdown-item" STYLE="padding: 0 8px 10px 8px;
                    text-decoration: none;
                    display: inline-block;
                    color: #000;
                    font-family: 'Montserrat', sans-serif;
                    font-weight: 700;
                    font-size: 13px;
                    outline: none;"  href="/ListRgMarine">Marine</a></li>
                <li><a class="dropdown-item" STYLE="padding: 0 8px 10px 8px;
                    text-decoration: none;
                    display: inline-block;
                    color: #000;
                    font-family: 'Montserrat', sans-serif;
                    font-weight: 700;
                    font-size: 13px;
                    outline: none;"  href="/ListRgFaune">Faune</a></li>
                <li><a class="dropdown-item" STYLE="padding: 0 8px 10px 8px;
                    text-decoration: none;
                    display: inline-block;
                    color: #000;
                    font-family: 'Montserrat', sans-serif;
                    font-weight: 700;
                    font-size: 13px;
                    outline: none;"  href="/ListRgMicroOrg">Micro-Orga</a></li>
            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link" STYLE="    padding: 0 8px 10px 8px;
    text-decoration: none;
    display: inline-block;
    margin-left: 10px;
    color: #fff;
    font-family: 'Montserrat', sans-serif;
            font-weight: 700;
            font-size: 13px;
            outline: none;"  href="/faq">FAQ</a>
        </li>

        <li class="nav-item">
            <a class="nav-link" STYLE="    padding: 0 8px 10px 8px;
    text-decoration: none;
    display: inline-block;
    margin-left: 10px;
    color: #fff;
    font-family: 'Montserrat', sans-serif;
            font-weight: 700;
            font-size: 13px;
            text-transform: uppercase;
            outline: none;"  href="./#contact">Contact</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" STYLE="    padding: 0 8px 10px 8px;
    text-decoration: none;
    display: inline-block;
    margin-left: 10px;
    color: #fff;
    font-family: 'Montserrat', sans-serif;
            font-weight: 700;
            font-size: 13px;
            text-transform: uppercase;
            outline: none;"  href="./#footer">A Propos</a>
        </li>
        <c:if test="${logged}">
            <li class="nav-item menu-has-children"><a href="#">${user.getNom()}</a>
                <ul>

                    <li><a class="nav-link" STYLE="    padding: 0 8px 10px 8px;
    text-decoration: none;
    display: inline-block;
    margin-left: 10px;
    color: #fff;
    font-family: 'Montserrat', sans-serif;
            font-weight: 700;
            font-size: 13px;
            text-transform: uppercase;
            outline: none;"  href="/logout">Se Déconnecter</a></li>

                </ul>
            </li>

        </c:if>
        <c:if test="${!logged}">
            <li class="nav-item"><a class="nav-link" STYLE="    padding: 0 8px 10px 8px;
    text-decoration: none;
    display: inline-block;
    margin-left: 10px;
    color: #fff;
    font-family: 'Montserrat', sans-serif;
            font-weight: 700;
            font-size: 13px;
            text-transform: uppercase;
            outline: none;"  href="/login">Se Connecter</a></li>
        </c:if>
    </ul>
</div>