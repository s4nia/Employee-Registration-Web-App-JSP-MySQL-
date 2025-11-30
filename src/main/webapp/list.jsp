<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Student List</title>
</head>
<body>
  <h2>Registered Students</h2>
  <table border="1">
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Email</th>
      <th>Phone</th>
    </tr>
    <c:forEach var="student" items="${studentList}">
      <tr>
        <td>${student.id}</td>
        <td>${student.name}</td>
        <td>${student.email}</td>
        <td>${student.phone}</td>
      </tr>
    </c:forEach>
  </table>
</body>
</html>
