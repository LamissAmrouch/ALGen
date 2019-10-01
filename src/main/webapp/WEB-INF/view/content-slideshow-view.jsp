
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<br> <br> <br> <br>
  <div class="card-deck">

      <div id="carouselExampleSlidesOnly" class="carousel slide card" data-ride="carousel">
          <div class="carousel-inner">

              <c:forEach items="${institutions}" var="inst" varStatus="loop">

                  <c:if test="${loop.index==0}">
                  <div class="carousel-item active" data-interval="4000">
                      <div class="card">
                          <img src="../img/<c:out value="${inst.image}"/>" class="card-img-top" >
                          <div class="card-body">
                              <h5 class="card-title"></h5>
                              <p class="card-text"> <a href="page-info-institution/<c:out value="${inst.id}"/>">  ${inst.nom} </a></p>
                          </div>
                      </div>
                  </div>
                  </c:if>
                  <c:if test="${loop.index!=0 and loop.index < 3}">
                      <div class="carousel-item" data-interval="4000">
                          <div class="card">
                              <img src="../img/<c:out value="${inst.image}"/>" class="card-img-top" >
                              <div class="card-body">
                                  <h5 class="card-title"></h5>
                                  <p class="card-text"> <a href="page-info-institution/<c:out value="${inst.id}"/>">  ${inst.nom} </a></p>
                              </div>
                          </div>
                      </div>
                  </c:if>
              </c:forEach>


          </div>
      </div>

      <div id="carouselExampleSlidesOnly2" class="carousel slide card" data-ride="carousel">
          <div class="carousel-inner">
              <c:forEach items="${institutions}" var="inst" varStatus="loop">

                  <c:if test="${loop.index==3}">
                      <div class="carousel-item active" data-interval="4000">
                          <div class="card">
                              <img src="../img/<c:out value="${inst.image}"/>" class="card-img-top" >
                              <div class="card-body">
                                  <h5 class="card-title"></h5>
                                  <p class="card-text"> <a href="page-info-institution/<c:out value="${inst.id}"/>">  ${inst.nom} </a></p>
                              </div>
                          </div>
                      </div>
                  </c:if>
                  <c:if test="${loop.index >3 and loop.index < 6}">
                      <div class="carousel-item" data-interval="4000">
                          <div class="card">
                              <img src="../img/<c:out value="${inst.image}"/>" class="card-img-top" >
                              <div class="card-body">
                                  <h5 class="card-title"></h5>
                                  <p class="card-text"> <a href="page-info-institution/<c:out value="${inst.id}"/>">  ${inst.nom} </a></p>
                              </div>
                          </div>
                      </div>
                  </c:if>
              </c:forEach>
          </div>
      </div>
      <div id="carouselExampleSlidesOnly3" class="carousel slide card" data-ride="carousel">
          <div class="carousel-inner">
              <c:forEach items="${institutions}" var="inst" varStatus="loop">

                  <c:if test="${loop.index==6}">
                      <div class="carousel-item active" data-interval="4000">
                          <div class="card">
                              <img src="../img/<c:out value="${inst.image}"/>" class="card-img-top" >
                              <div class="card-body">
                                  <h5 class="card-title"></h5>
                                  <p class="card-text"> <a href="page-info-institution/<c:out value="${inst.id}"/>">  ${inst.nom} </a></p>
                              </div>
                          </div>
                      </div>
                  </c:if>
                  <c:if test="${loop.index > 6 and loop.index < 9}">
                      <div class="carousel-item" data-interval="4000">
                          <div class="card">
                              <img src="../img/<c:out value="${inst.image}"/>" class="card-img-top" >
                              <div class="card-body">
                                  <h5 class="card-title"></h5>
                                  <p class="card-text"> <a href="page-info-institution/<c:out value="${inst.id}"/>">  ${inst.nom} </a></p>
                              </div>
                          </div>
                      </div>
                  </c:if>
              </c:forEach>
          </div>
      </div>
  </div>







