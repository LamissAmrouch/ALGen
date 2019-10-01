<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<section id="about" class="commun">

        <c:forEach items="${institutions}" var="inst" varStatus="loop">

        <div id="rgListeElement">

            <img src="../img/<c:out value="${inst.image}"/>" class="InstitutionImage">
            <div id="InstitutionDetail">
                <h1 id="InstitutionName"> <a href="page-info-institution/<c:out value="${inst.id}"/>">  ${inst.nom} </a> </h1>

                <br>
                <p id="InstitutionDiscription">
                        ${inst.description}
                </p>
            </div>
        </div>

       </c:forEach>


    </section>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
