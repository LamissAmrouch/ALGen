<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="form-group">
    <label for="typeAlim">Type:</label>
    <input type="text" id="typeAlim" name="typeAlim" value="<c:out value='${ rg_type2!=null ? rg_type2.type : ""}'/>" class="form-control"/>
</div>