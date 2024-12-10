<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%
Employee emp = (Employee)session.getAttribute("employee");  /*  to get session variable */
if(emp==null){
    response.sendRedirect("empsessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Spring Boot</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <h2 align="center">Spring Boot MVC SDP Project</h2>
    <div class="navbar">
        <a href="emphome">Home</a>
        <a href="empprofile">Profile</a>
        <a href="empcontactus">Contact Us</a>
        <a href="updateemployee"> Update Profile</a>
        <a href="viewempsbydept"> View emps by dept</a>
        <a href="emplogout">Logout</a>
    </div>
</body>
</html>