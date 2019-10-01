<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="form-group">
    <label for="type_animal">Type:</label>
    <select class="form-control" name="type_animal" id="type_animal">
        <c:forEach var="type" items="${type_animal}">
            <option value="<c:out value="${type}" />">
                <c:out value="${type}" />
            </option>
        </c:forEach>
    </select>
</div>
<div class="form-group">
    <label for="situation">Type:</label>
    <select class="form-control" name="situation" id="situation">
        <c:forEach var="s" items="${situation}">
            <option value="<c:out value="${s}" />">
                <c:out value="${s}" />
            </option>
        </c:forEach>
    </select>
</div>