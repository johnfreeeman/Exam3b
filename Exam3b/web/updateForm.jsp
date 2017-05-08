
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.Customers"%>
<% Customers customer = (Customers) request.getAttribute("customer");%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="newcss.css"/>
        <title>Update A Customer</title>
        
    </head>
    <body>
        <div class="wrap">
        
            <%@ include file="includes/header.jsp" %>

            <%@ include file="includes/menu.jsp" %>
            
            <div class="main">
            
        <h1>Update A Customer</h1>
        
        <form name="updateForm" action="updateCustomer" method="get">
            
            <table class ="update">
         <hr><hr>
                    <label>First Name:</label>
                    <br>
                    <input type="text" name="firstName" value="<%= customer.getFirstName() %>" required data-validation-required-message="Please enter first name" pattern="[a-zA-Z]+(['-][a-zA-Z]+)*" autofocus title="Please enter alphabet only">
                    <br>

                    <label>Last Name:</label>
                    <br>
                    <input type="text" name="lastName" value="<%= customer.getLastName() %>" required data-validation-required-message="Please enter first name" pattern="[a-zA-Z]+(['-][a-zA-Z]+)*" autofocus title="Please enter alphabet only">
                    <br>
                    <hr>

                    <label>Address 1:</label>
                    <br>
                    <input type="text" name="addr1:" value="<%= customer.getAddr1() %>" required data-validation-required-message="Please enter address" pattern="\d+\s{1}([a-zA-Z]{2,}[.]?" autofocus title="ex) 123 Abc St">

                    <br>
                    <label>Address 2:</label>
                    <br>
                    <input type="text" name="addr2:" value="<%= customer.getAddr2() %>" title="ex. Apt 3"> 
                    
                    <br><br>
                    <label>City:</label>
                    <br>
                    <input type="text" name="city" value="<%= customer.getCity() %>" required data-validation-required-message="Please enter city">
                    <br>
                    
                    <br>
                    <label>State:</label>
                    <label for="State"></label>
                    <select id="State" name="state" value="<%= customer.getState() %>" required data-validation-required-message="Please select State">
                        <option value = "---Select---" selected> ---Select--- </option>
                        <option value = "Alabama"> AL </option>
                        <option value = "Colorado"> CO </option>
                        <option value = "Florida"> FL</option>
                        <option value = "Iowa"> IA</option>
                        <option value = "Minnesota"> MN</option>
                    </select>
                    <br><br>
                    
                    <label>Zip Code:</label>
                    <br>
                    <input type="text" name="zip" value="<%= customer.getZip() %>" required data-validation-required-message="Please enter Zip Code" pattern="\d{5}" autofocus title="Please enter 5 digits">
                    <br>
                    <hr>

                    <label>Email Address:</label>
                    <br>
                    <input type="text" name="emailAddr" value="<%= customer.getEmailAddr() %>" required data-validation-required-message="Please enter Zip Code" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="ex) example@mail.com">
                    <br><br>

                    <hr>        

                    <hr>
                    <br><br>
                    <input type="reset" name="reset" value="Clear" />
                    <input type="submit" name="submit" value="Submit" />
        </form>
                <%@ include file="includes/footer.jsp" %>
        
            </div>    
        </div>
    </body>
</html>


