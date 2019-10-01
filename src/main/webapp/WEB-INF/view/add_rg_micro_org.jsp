<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="form-group">
    <label for="regneMicro">Regne :</label>
    <select class="form-control" name="regneMicro" id="regneMicro">
        <c:forEach var="r"  items="${regne}">
            <option value="<c:out value="${r}" />">
                <c:out value="${r}" />
            </option>
        </c:forEach>
    </select>
</div>
<div class="form-group">
    <label for="type_microorganisme">Type :</label>
    <select class="form-control" name="type_microorganisme" id="type_microorganisme">
        <c:forEach var="typeM" items="${type_microorganisme}">
            <option value="<c:out value="${typeM}" />">
                <c:out value="${typeM}" />
            </option>
        </c:forEach>
    </select>
</div>

<div class="form-group">
    <label for="est_Nocif">Est Nocif :</label>
    <select class="form-control" name="est_Nocif" id="est_Nocif">
        <option value="1" selected="selected">Oui</option>
        <option value="0">Non</option>
    </select>
</div>