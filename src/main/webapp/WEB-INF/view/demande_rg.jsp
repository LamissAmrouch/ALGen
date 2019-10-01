<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <head>
        <meta charset="utf-8">

        <meta http-equiv="content-type" content="text/html;charset=utf-8" />
        <title>ALGen</title>
        <script src="webjars/jquery/3.3.1/jquery.min.js" ></script>
        <script src="webjars/bootstrap/4.3.1/js/bootstrap.bundle.min.js" ></script>
        <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
        <script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
        <link rel="stylesheet" href="webjars/font-awesome/5.8.1/css/fontawesome.min.css"/>
        <link href="css/style.css" rel="stylesheet">
        <script src="js/script.js"></script>
        <link href="css/styleS.css" rel="stylesheet"/>
        <link href="css/style_headerS.css" rel="stylesheet">

        <link href="https://fonts.googleapis.com/css?family=Raleway:500|Roboto+Condensed&display=swap" rel="stylesheet">
        <%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  %>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }
        </style>

    </head>

<body class="bg-light">

<!--DEBUT NAV-BAR-->
<jsp:include page="header.jsp" flush="true"></jsp:include>

<!--FIN NAV-BAR-->


<div class="jumbotron text-center">
    <div class="container">
        <h1>Demande d'utilisation d'une ressource génétique</h1>
        <p>Nous vous rappelons que la procedure d'accès aux ressources génétiques est régie par des lois et reglementations, nous vous invitons donc a les lire attentivemet avant d'entamer la procédure.</p>
     </div>
</div>
<div class="container">
    <div class="container">
        <div class="py-5 ">


        </div>

        <div class="row">

            <div class="col-md-12 order-md-1">
                <h4 class="mb-3">Construire le dossier de demande</h4>
                <hr>
                <h5>1. Informations personnelles</h5>
                <hr>
                <form class="needs-validation" novalidate>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="firstName">Nom</label>
                            <input type="text" class="form-control" id="firstName" placeholder="Monsieur" value="Monsieur" required>
                            <div class="invalid-feedback">
                                Nom.
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="lastName">Prénom</label>
                            <input type="text" class="form-control" id="lastName" placeholder="monsieur" value="monsieur" required>
                            <div class="invalid-feedback">
                                Prénom.
                            </div>
                        </div>
                    </div>



                    <div class="mb-3">
                        <label for="email">Email </label>
                        <input type="email" class="form-control" id="email" placeholder="Monsieur.monsier@example.com" value="Monsieur.monsier@example.com">
                        <div class="invalid-feedback">
                            Adresse mail
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="address">Adresse exacte</label>
                        <input type="text" class="form-control" id="address" placeholder="Cite ..." required>
                        <div class="invalid-feedback">
                            Veuillez saisir votre adresse.
                        </div>
                    </div>



                    <div class="row">
                        <div class="col-md-5 mb-3">
                            <label for="country">Pays</label>
                            <select class="custom-select d-block w-100" id="country" required>
                                <option value="">Choisissez ...</option>
                                <option>Algerie</option>
                                <option>France</option>
                                <option>Tunisie</option>
                                <option>Maroc</option>
                            </select>
                            <div class="invalid-feedback">
                                Pays.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="state">Wilaya/Etat/Region</label>
                            <select class="custom-select d-block w-100" id="state" required>
                                <option value="">Choisissez ...</option>
                                <option>Alger</option>
                                <option>Bejaia</option>
                                <option>Oran</option>
                                <option>Tizi</option>
                            </select>
                            <div class="invalid-feedback">
                                Wilaya.
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label  >Code postal</label>
                            <input type="text" class="form-control" id="code-postal" placeholder="" required>
                            <div class="invalid-feedback">
                                Code postal
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="address">Téléphone</label>
                        <input type="text" class="form-control" id="address" placeholder="0123456..." required>
                        <div class="invalid-feedback">
                            Téléphone
                        </div>
                    </div>
                    <br>

                    <hr class="mb-4">

                    <h5 class="mb-3">2. La ressource</h5>
                    <div class="row">
                        <div class="col-md-6 mb-6" >
                            <label for="country">Type de la ressource</label>
                            <select class="custom-select d-block w-100" id="country" required>
                                <option value="">Choisissez ...</option>
                                <option>ressources génétiques forestières et relatives aux plantes aromatiques et médicinales</option>
                                <option>Ressources génétiques pour l’alimentation et l’agriculture</option>
                                <option>Ressources génétiques marines</option>
                                <option>Ressources génétiques de la faune sauvage et domestique</option>
                                <option>Ressources génétiques des microorganismes</option>
                            </select>
                            <div class="invalid-feedback">
                                Please select a valid country.
                            </div>
                            <br>
                        </div>
                        <div class="col-md-6 mb-6">
                            <label  >Nom de la ressource</label>
                            <input type="text" class="form-control" id="code-postal" placeholder="" required>
                            <div class="invalid-feedback">
                                Nom de la ressource.
                            </div>
                        </div>
                    </div>
                    <hr class="mb-4">

                    <h5 class="mb-3">3. Documents, <small><i>les documents doivent etre sous format pdf</i></small></h5>

                    <div class="row">

                        <div class="col-md-12 mb-12">
                            <div class="form-group">
                                <label>Piece 1</label>
                                <br>
                                <input class="main-color-bg"type="file" >

                            </div>
                        </div>
                        <div class="col-md-12 mb-12">
                            <div class="form-group">
                                <label>Piece 2</label>
                                <br>
                                <input class="main-color-bg"type="file" >

                            </div>
                        </div>
                        <div class="col-md-12 mb-12">
                            <div class="form-group">
                                <label>Piece 3</label>
                                <br>
                                <input class="main-color-bg"type="file" >

                            </div>
                        </div>




                    </div>
                    <hr class="mb-4">
                    <div class="row justify-content-between">
                        <div class="col-md-2 mb-2 fa fa-chevron-left" aria-hidden="true">
                            <button class="btn btn-lg btn-block main-color-bg " type="submit" id="enregistrer">Enregistrer</button>
                        </div>
                        <div class="col-md-2 mb-2 fa fa-chevron-left" aria-hidden="true">
                            <button class="btn btn-primary btn-lg btn-block main-color-bg float-right" type="submit">Soumettre</button>
                        </div>

                    </div>
                </form>
            </div>
        </div>


    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="/docs/4.3/assets/js/vendor/jquery-slim.min.js"><\/script>')</script><script src="/docs/4.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
    <script src="form-validation.js"></script>
    <footer id="footer">
        <p>Copyright</p>
    </footer>
</div>
</body>
</html>
