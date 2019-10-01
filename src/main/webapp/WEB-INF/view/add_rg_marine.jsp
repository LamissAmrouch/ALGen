<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="form-group">
    <label for="niveau_profondeur">Niveau de Profondeur:</label>
    <input type="text" id="niveau_profondeur" name="niveau_profondeur" value="<c:out value='${ rg_type3!=null ? rg_type3.niveau_profondeur : ""}'/>" class="form-control"/>
</div>
<div class="form-group">
    <label for="regne">Regne :</label>
    <select class="form-control" name="regne" id="regne">
        <c:forEach var="r"  items="${regne}">
            <option value="<c:out value="${r}" />">
                <c:out value="${r}" />
            </option>
        </c:forEach>
    </select>
</div>
<div class="form-group">
    <label for="est_protege">Est Protegée :</label>
    <select class="form-control" name="est_protege" id="est_protege">
        <option value="1" selected="selected">Oui</option>
        <option value="0">Non</option>
    </select>
</div>
<div class="form-group">
    <label for="en_production">En Production :</label>
    <select class="form-control" name="en_production" id="en_production">
        <option value="1" selected="selected">Oui</option>
        <option value="0">Non</option>
    </select>
</div>