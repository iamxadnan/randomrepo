<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Employee</title>
    <link rel="stylesheet" type="text/css" href="style.css"> <!-- Link to your CSS file -->
    <style>
        /* Add specific styles for the table */
        table {
            width: 100%;
            max-width: 1200px; /* Set a maximum width for the table */
            margin: 20px auto; /* Center the table on the page */
            border-collapse: collapse; /* Collapse borders */
            background-color: #2e0854; /* Dark purple background for the table */
        }

        table, th, td {
            border: 2px solid #ffffff; /* White borders for better visibility */
        }

        th, td {
            padding: 10px; /* Padding for cells */
            text-align: center; /* Center align text */
            word-wrap: break-word; /* Allow breaking of long words */
            color: #ffffff; /* White text color for better contrast */
        }

        th {
            background-color: #000000; /* Black background for header */
            color: #ffffff; /* White text color for header */
        }

        tr:nth-child(even) {
            background-color: #3e1e70; /* Slightly lighter dark purple for even rows */
        }

        tr:nth-child(odd) {
            background-color: #2e0854; /* Dark purple for odd rows */
        }

        a {
            color: #ffcc00; /* Gold color for the delete link */
            text-decoration: none; /* Remove underline */
            font-weight: bold; /* Make the text bold */
        }

        a:hover {
            color: #ffffff; /* Change color on hover */
            text-decoration: underline; /* Underline on hover */
            transition: color 0.3s ease, text-decoration 0.3s ease; /* Smooth transition */
        }
    </style>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <h3>Delete Employee</h3> <!-- Removed inline style -->
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>DEPARTMENT</th>
            <th>SALARY</th>
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>STATUS</th>
            <th>ACTION</th>
        </tr>
        <c:forEach items="${emplist}" var="emp">
            <tr>
                <td><c:out value="${emp.id}"/></td>
                <td><c:out value="${emp.name}"/></td>
                <td><c:out value="${emp.gender}"/></td>
                <td><c:out value="${emp.dateofbirth}"/></td>
                <td><c:out value="${emp.department}"/></td>
                <td><c:out value="${emp.salary}"/></td>
                <td><c:out value="${emp.location}"/></td>
                <td><c:out value="${emp.email}"/></td>
                <td><c:out value="${emp.contact}"/></td>
                <td><c:out value="${emp.status}"/></td>
                <td>
                    <a href='<c:url value="delete?id=${emp.id}"></c:url>'>Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
