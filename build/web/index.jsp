<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 24.Eki.2015, 19:26:04
    Author     : Utkan
--%>

<sql:query var="subjects" dataSource="jdbc/IFPNEW2">
    SELECT subject_id, name FROM Subject
</sql:query>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<!DOCTYPE html>
<html>
    <head>
    <link rel="stylesheet" type="text/css" href="style.css"></link>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>IFPWAFCAD Homepage</title>
</head>
<body>
    <h1><table border="0">
            <thead>
                <tr>
                    <th> Welcome to IFPWAFCAD, the International Former Professional Wrestlers' Association for Counseling and Development!</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>To view the contact details of an IFPWAFCAD certified former
                professional wrestler in your area, select a subject below:</td>
                </tr>
                <tr>
                    <td><form action="response.jsp">
                            <strong>Select a subject:</strong>
                            <select name="subject_id">
     <c:forEach var="row" items="${subjects.rows}">
            <option value="${row.subject_id}">${row.name}</option>
        </c:forEach>
                            </select>
                            <input type="submit" value="Submit" />
                        </form></td>
                </tr>
            </tbody>
        </table>
       </h1>
</body>
</html>
