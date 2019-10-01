<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
    <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"rel="stylesheet">
    <link href="webjars/font-awesome/5.8.1/css/all.css"
          rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">


</head>


<div class="row" style="height: 100%">
    <div class="col-sm">

        <div id="logo">
            <a href="./"><img class="imgLogin" src="img/Algen-Logo.png" alt="" title="" /></a>
        </div>

        <div class="container" style="margin-top: 30px;">
            <header>
                <div id="material-tabs">
                    <a id="tab1-tab" href="#tab1" class="active lgn">Se Connecter</a>
                    <a id="tab2-tab" href="#tab2" class="signUp">S'inscrire</a>

                    <span class="yellow-bar"></span>
                </div>
            </header>

            <div class="tab-content">
                <div id="#tab1" class="tab1">
                    <h3 class="title">Connectez-vous a votre compte</h3>
                    <form action="/login" method="post">
                        <div class="inputWithIcon">
                            <input type="text" name="email" placeholder="Email">
                            <i class="fas fa-envelope"></i>

                        </div>
                        <div class="inputWithIcon">
                            <input type="password" name="password" placeholder="Password">
                            <i class="fas fa-lock"></i>

                        </div>
                        <div class="bt">
                            <input type="submit" class="sub btn btn-primary" value="Se Connecter">

                        </div>

                    </form>
                    <c:if test="${error}">
                        <div class="error alert alert-danger">

                            <strong>${errorC}</strong>
                        </div>
                    </c:if>

                </div>
                <div id="#tab2" class="tab2 hide">
                    <h3 class="title">S'inscrire</h3>
                    <form action="/sign_in" method="post">



                        <div class="inputWithIcon">
                            <input type="text" name="nom" placeholder="Nom">
                            <i class="fas fa-user"></i>

                        </div>
                        <div class="inputWithIcon">
                            <input type="text" name="prenom" placeholder="Prenom">
                            <i class="fas fa-user"></i>

                        </div>
                        <div  class="cu-se"  >
                            <select name="sexe">
                                <option value="sex" disabled selected>Sexe</option>
                                <option value="0" >Male</option>
                                <option value="1">Femelle</option>

                            </select>
                        </div>
                        <div class="inputWithIcon">
                            <input type="text" name="fonction" placeholder="Fonction">
                            <i class="fas fa-user"></i>

                        </div>
                        <div class="inputWithIcon">
                            <input type="text" name="email" placeholder="Email">
                            <i class="fas fa-envelope"></i>

                        </div>

                        <div class="inputWithIcon">
                            <input type="password" name="password" placeholder="Password">
                            <i class="fas fa-lock"></i>

                        </div>

                        <div class="bt">
                            <input type="submit" class=" sub btn btn-primary" value="S'inscrire">

                        </div>
                    </form>
                    <c:if test="${error}">
                        <div class="error alert alert-danger">

                            <strong>${errorC}</strong>
                        </div>
                    </c:if>
                </div>



            </div>

        </div>


    </div>
    <div class="col-sm img">

    </div>
</div>


</form>
<script src="js/wow.js"></script>
<script src="webjars/jquery/3.3.1/jquery.min.js"></script>
<script src="webjars/bootstrap/4.3.1/js/bootstrap.bundle.js"></script>

<script src="js/main.js"></script>
</body>
</html>

