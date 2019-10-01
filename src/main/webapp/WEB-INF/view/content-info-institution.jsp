
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<br><br>
<div class="container">
    <div class="text-left">

<img src="../img/<c:out value="${institution.image}"/>"  class="img-fluid rounded mx-auto d-block w-40 p-3" alt="ensalogo">
    </div>

    <br>
    <h3 class="text-success">Presentation : </h3>

<p id="presentation">
    <c:out value="${institution.description}"/>
</p>

    <br>
    <div id="line1" class="row rounded line align-center">  </div>
    <br>
    <h3 class="text-success">Resources Genetiques : </h3>
    <ul>
        <li> <c:out value="${institution.domaine}"/> </li>

    </ul>

    <br>
    <div class="row rounded line align-center">  </div>
    <br>
    <h3 class="text-success">Contact : </h3>
    <ul>
        <li>Site : <a href="https://<c:out value="${institution.site}"/>/" target="_blank"> <c:out value="${institution.site}"/> </a> </li>
        <li>Adresse : <c:out value="${institution.localisation}"/></li>

    </ul>
    <br>


</div>

