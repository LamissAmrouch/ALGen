<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr" xml:lang="fr>

  <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta charset="utf-8">
<title>ALGen</title>

    <script src="webjars/jquery/3.3.1/jquery.min.js" ></script>
    <script src="webjars/bootstrap/4.3.1/js/bootstrap.bundle.min.js" ></script>
    <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
    <script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
    <link rel="stylesheet" href="webjars/font-awesome/5.8.1/css/fontawesome.min.css"/>


   <script src="js/script.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Raleway:500|Roboto+Condensed&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

  </head>


  <body class="bg-light">

  <div class="cont">

  <jsp:include page="header.jsp" flush="true"></jsp:include>
        <!--Fin navbar-->


          <section id="breadcrumb">

          </section>

          <section id="main">
            <div class="container" style="margin-top: 30px;">
              <h2>Lois et reglements</h2>
              <br>
              <br>

           <div class="input-group ">
              <div class="input-group-append">
                    <button class="btn" type="button"><i class="fas fa-search icon"></i></button> 
              </div>
              <input class="form-control" id="myInput" type="text" placeholder="Chercher...">
          </div>

          <br>
          <div>
            <div style="float:left;">
              <h5 style=" margin-left: 20px; padding-top:7px;">La liste des lois et reglements</h5>
            </div>
            <div class="text-right">
              <button type="button" class="btn btn-lg btn-light"><i class="fas fa-sliders-h icon"></i> Filtrer</button>
            </div>
          </div>

              <div class="container-fluid">
                <ul class="list-group list-group-flush">

                    <c:forEach items="${lois}" var="loi" >

    <li class="list-group-item">
                      <div class="row">
                     <div class="col-md-6 mb-6 text-left" style="padding-top:6px;"> <c:out value="${loi.designation}"/>
                      </div>
                      <div class="container text-right col-md-6 mb-6" >
                            <button type="button" class="btn main-button" data-toggle="modal" data-target="#resumeModel"><i class="fas fa-file-alt "></i>
                              Résumé
                            </button>

                            <!-- The Modal -->
                            <div class="modal" id="resumeModel">
                              <div class="modal-dialog">
                                <div class="modal-content">
                                
                                  <!-- Modal Header -->
                                  <div class="modal-header">
                                    <h3 class="modal-title">Résumé de la loi</h3>
                                    <button type="button " class="close btn btn-danger" data-dismiss="modal"aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                  </div>
                                  
                                  <!-- Modal body -->
                                  <div class="modal-body">
                                    
                                    <p><c:out value="${loi.designation}"/></p>
                                    <p>Abrogé : Oui </p>
                                    <p>Code :<c:out value="${loi.code}"/></p>
                                    <p>Resumé : <c:out value="${loi.resum}"/></p>
                                   
                                  </div>
                                  
                                  <!-- Modal footer -->
                                  <div class="modal-footer">


                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Fermer</button>
 
                                  </div>
                                  
                                </div>
                              </div>
                            </div>

                            <!-- modal pdf-->
                             <button type="button" class="btn main-button" data-toggle="modal" data-target="#integralModel">Texte intégral
                            </button>

                            <!-- The Modal -->
                            <div class="modal fade" id="integralModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

                                <div class="modal-dialog modal-xl modal-pdf " role="document">
                                 <div class="modal-content modal-pdf">
                                                               <!-- Modal Header -->
                                  <div class="modal-header">
                                    <h1 class="modal-title">Texte de la loi</h1>
                                    <button type="button" class="close" data-dismiss="modal"></button>
                                  </div>


                                  <!-- Modal body -->
                                  <div class="modal-body modal-pdf">

                                          <iframe src="../documents/<c:out value="${loi.chemin_doc}"/>"
                                                  style="width:100%; height:100%;" frameborder="0"> </iframe>

                                   
                                  </div>
                                  
                                  <!-- Modal footer -->
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Fermer</button>
 
                                  </div>
                                  
                                </div>
                              </div>
                            </div>
                            
                          </div>

                          </div>
                          
                    </li>

</c:forEach>
                  </ul>
              </div>
        
            </div>
         </section>





       <section id="breadcrumb">

       </section>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>