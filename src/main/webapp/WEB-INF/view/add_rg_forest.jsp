<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="form-group">
    <label for="type_forest">Type :</label>
    <select class="form-control" name="type_forest" id="type_forest">
        <c:forEach var="typeF" items="${type_forest}">
            <option value="<c:out value="${typeF}" />">
                <c:out value="${typeF}" />
            </option>
        </c:forEach>
    </select>
</div>

<div class="form-group">
    <label for="parties_utilises">Parties utilisés :</label>
    <textarea rows="3" id="parties_utilises" name="parties_utilises" class="form-control"><c:out value='${ rg_type1!=null ? rg_type1.parties_utilises : ""}'/></textarea>
</div>

<div class="form-group">
    <label for="constituants">Constituants :</label>
    <textarea rows="3" id="constituants" name="constituants" class="form-control"><c:out value='${ rg_type1!=null ? rg_type1.constituants : ""}'/></textarea>
</div>

<div class="form-group">
    <label for="usage">Usage :</label>
    <textarea rows="3" id="usage" name="usage" class="form-control"><c:out value='${ rg_type1!=null ? rg_type1.usage : ""}'/></textarea>
</div>
