
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr" xml:lang="fr">

  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<meta charset="utf-8">

<title>ALGen</title>
    <script src="webjars/jquery/3.3.1/jquery.min.js" ></script>
    <script src="webjars/bootstrap/4.3.1/js/bootstrap.bundle.min.js" ></script>
    <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
    <script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
    <link rel="stylesheet" href="webjars/font-awesome/5.8.1/css/fontawesome.min.css"/>
    <link href="css/style.css" rel="stylesheet">
    <script src="js/script.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/styleS.css" rel="stylesheet">
    <link href="css/style_headerS.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway:500|Roboto+Condensed&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

  </head>
  <body class="bg-light">

   <!--DEBUT NAV-BAR-->

          <ul class="nav nav-pills justify-content-center header" >
              <li class="nav-item">
                  <a class="nav-link " href="#">Accueil</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link " href="#">Institutions</a>
              </li>
              <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" data-toggle="dropdown"
                     href="#" role="button" aria-haspopup="true" aria-expanded="false">Ressource</a>
                  <div class="dropdown-menu">
                      <a class="dropdown-item" href="#">Medecinale & Aromatique</a>
                      <a class="dropdown-item" href="#">Agro-Alimentaire</a>
                      <a class="dropdown-item" href="#">Marine</a>
                      <a class="dropdown-item" href="#">Faune</a>
                      <a class="dropdown-item" href="#">Micro-Organique</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Separated link</a>
                  </div>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="#">Lois</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="#">Glossaire</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="#">Participer</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="#">A Propos</a>
              </li>
          </ul>

        <!--Fin navbar-->
                <section id="breadcrumb">

                </section>

    <section id="main">
      <div class="container">
        <h2>Les demandes</h2>
        <br>
        <br>
        


          
            <!-- Website Overview -->
              <div class="card">
                <div class="btn-group">
                  <button type="button" id="asuivre" class="btn btn-primary btn-lg btn-radius-less ">A suivre</button>
                  <button type="button" class="btn btn-lg btn-radius-less">En instruction</button>
                  <button type="button" class="btn btn-lg btn-radius-less">Traité</button>
                  <button type="button" class="btn btn-lg btn-radius-less">Tous</button>
                </div>
              </div>
              
              <br>


              <!-- la recherche -->

               <div class="input-group ">
                  <div class="input-group-append">
                    <button class="btn" type="button"><i class="fas fa-search icon"></i></button> 
                  </div>
               <input class="form-control" id="myInput" type="text" placeholder="Chercher...">
               </div>
               <p class="font-weight-bold text-right icon"><small><a href="">Parametres avances</a></small></p>


                           <br>
                            <div>
                            <div style="float:left;">
                            <h5 style="margin:0; padding-top:7px;">La liste des dossiers a suivre</h5>
                           </div>
                            <div class="text-right">
                            <button type="button" class="btn btn-lg btn-light"><i class="fas fa-sliders-h icon"></i> Filtrer</button>
                           </div>
                           </div>


             
                            <div class="card">
                               

                                  <table class="table table-hover tabDossier">
                                    <thead>

                                      <tr>
                                        <th scope="col">Nº dossier</th>
                                        <th scope="col">Demarche</th>
                                        <th scope="col">Statut</th>
                                        <th scope="col">Soumis</th>
                                        <th scope="col">Début d'instruction</th>
                                      </tr>
                                    </thead>
                                    <tbody id="tabDossierBody">
                                      
                                      <tr>
                                        <th scope="row">457193</th>
                                        <td><a href="Formulaire_Demande.html">Autorisation pour l'accès aux ressources génétiques sur le territoire national</a></td>
                                        <td class="td-stat"><span class="label-approuved">Approuvé</span></td>
                                        <td>28 février 2019</td>
                                        <td>3 mars 2019</td>
                                      </tr>
                                        <th scope="row">457193</th>
                                        <td>Autorisation pour l'accès aux ressources génétiques sur le territoire national</td>
                                        <td class="td-stat"><span class="label-rejet">Rejeté</span></td>
                                        <td>28 février 2019</td>
                                        <td>3 mars 2019</td>
                                      </tr>

                                      <th scope="row">457193</th>
                                        <td>Autorisation pour l'accès aux ressources génétiques sur le territoire national</td>
                                        <td ><span class="label-instru">Instruction</span></td>
                                        <td>28 février 2019</td>
                                        <td>3 mars 2019</td>
                                      </tr>
                                      <th scope="row">457193</th>
                                        <td>Autorisation pour l'accès aux ressources génétiques sur le territoire national</td>
                                        <td class="td-stat"><span class="label-instru">Instruction</span></td>
                                        <td>28 février 2019</td>
                                        <td>3 mars 2019</td>
                                      </tr>
                                      <th scope="row">457193</th>
                                        <td>Autorisation pour l'accès aux ressources génétiques sur le territoire national</td>
                                        <td class="td-stat"><span class="label-instru">Instruction</span></td>
                                        <td>28 février 2019</td>
                                        <td>3 mars 2019</td>
                                      </tr>
                                      <th scope="row">457193</th>
                                        <td>Autorisation pour l'accès aux ressources génétiques sur le territoire national</td>
                                        <td class="td-stat"><span class="label-instru">Instruction</span></td>
                                        <td>28 février 2019</td>
                                        <td>3 mars 2019</td>
                                      </tr>
                                    </tbody>
                                  </table>
                                 </div>

            </div>
    </section>

<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#tabDossierBody tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>



                <section id="breadcrumb">

                </section>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
