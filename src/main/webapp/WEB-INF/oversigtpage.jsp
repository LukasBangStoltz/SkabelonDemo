<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lukas
  Date: 04-03-2020
  Time: 09:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>KundeListe</title>
</head>
<body>
<c:forEach var="element" items="${requestScope.customerList}">
    <br>
    ${element}
    <br>
</c:forEach>
<br>
<table>
    <tr>
        <td>
            Indtast id for at slette bruger:

            <form name="deleteUser" action="FrontController" method="POST">
                <input type="hidden" name="taget" value="deleteUser">
                id:<br>
                <input type="text" name="id">
                <br>
                <br>
                <input type="submit" value="Submit">
            </form>
        </td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>

        <td>
            <br>
            <br>

            Her kan du ændre en kundes password:
            <form name="updateUserPassword" action="FrontController" method="POST">
                <input type="hidden" name="taget" value="updateUserPassword">
                id:<br>
                <input type="text" name="id">
                <br>
                Nyt password:<br>
                <input type="text" name="password" value="sesam">
                <br>
                <br>
                <input type="submit" value="Submit">


            </form>
        </td>
    </tr>
</table>
<br>
<br>
<br>
<br>
Total antal customers:
${requestScope.customerList.size()}
</body>
</html>
