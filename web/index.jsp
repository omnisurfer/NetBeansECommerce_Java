<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : Apr 2, 2017, 4:03:55 PM
    Author     : omnis
--%>

<sql:query var="categories" dataSource="jdbc/affablebean">
    SELECT * FROM category
</sql:query>

<div id="indexLeftColumn">
    <div id="welcomText">
        <p> [ welcome text ]            
    </div>
</div>

<div id="indexRightColumn">
    <c:forEach var="category" items="${categories.rows}">
        <div class="categoryBox">
            <a href="category?${category.id}">
                <span class="categoryLabelText">${category.name}</span>                

                <img src="${initParam.categoryImagePath}${category.name}.jpg" alt="${category.name}">
            </a>
        </div>
    </c:forEach>

</div>
