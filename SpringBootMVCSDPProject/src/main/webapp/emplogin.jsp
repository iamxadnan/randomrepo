<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Login</title>
    <link rel="stylesheet" type="text/css" href="style.css"> <!-- Linking CSS file -->
</head>
<body>
  <%@include file="mainnavbar.jsp" %>
  
  <h4 align="center" style="color: red">
    <c:out value="${message}"></c:out>
  </h4>
  
  <h3 style="text-align: center; color: #e0e0e0;"><u>Employee Login</u></h3>
  
  <div class="form-container">
      <form method="post" action="checkemplogin">
          <table>
              <tr>
                  <td><label for="eemail">Enter Email ID</label></td>
                  <td><input type="email" id="eemail" name="eemail" required/></td>
              </tr>
              <tr>
                  <td><label for="epwd">Enter Password</label></td>
                  <td><input type="password" id="epwd" name="epwd" required/></td>
              </tr>
              <tr>
                  <td colspan="2" class="button-container">
                      <input type="submit" value="Login"/>
                      <input type="reset" value="Clear"/>
                  </td>
              </tr>
          </table>
      </form>
  </div>
</body>
</html>
