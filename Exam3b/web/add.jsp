<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add A New Customer</title>
        <link rel="stylesheet" type="text/css" href="newcss.css"/>
    </head>
    <body>
        <div class="wrap">

            <%@ include file="includes/header.jsp" %>

            <%@ include file="includes/menu.jsp" %>
        
<div class="main">


            <h1>Add New Customer Record</h1>

            <div class="add">
                <form name ="addForm" action ="addStudent" method ="get">

                    
                    <hr><hr>
                    <label>First Name:</label>
                    <input type="text" name="firstName" value="" required/>
                    <br>

                    <label>Last Name:</label>
                    <input type="text" name="lastName" value="" required/>
                    <br>
                    <hr>

                    <label>Address 1:</label>
                    <br>
                    <input type="text" name="addr1:" value="" required/> <!--pattern='[\+]\d{2}[\()\d{2}[\]]\d{4}[\-]\d{4}' title= "*(Required):Invalid number" /> doesn't work for some reason-->

                    <br>
                    <label>Address 2:</label>
                    <br>
                    <input type="text" name="addr2:" value="" required/> <!--pattern='[\+]\d{2}[\()\d{2}[\]]\d{4}[\-]\d{4}' title= "*(Required):Invalid number" /> doesn't work for some reason-->
                    
                    <br><br>
                    <label>City:</label>
                    <br>
                    <input type="text" name="address" value="" />
                    <br>
                    <br>
                    <label>State:</label>
                    <label for="State"></label>
                    <select id="State" name="state">
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
                    <input type="text" name="address" value="" />
                    <br>
                    <hr>
                    <!----------------when changed to dropbox, check input values
                    <label>State:</label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label for="State"></label>
                    <select id="State" name="state">
                        <option value = "---Select---" selected> ---Select--- </option>
                        <option value = "Alabama"> AL </option>
                        <option value = "Colorado"> CO </option>
                        <option value = "Florida"> FL</option>
                    <option value = "Iowa"> IA</option>
                    <option value = "Minnesota"> MN</option>
                    </select>
                    <br>
                    ----------->
                    
                    <label>Email Address:</label>
                    <br>
                    <input type="text" name="city" value="" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"title="*(Required):example@mail.com"/>
                    <br><br>

                    <hr>        

                    <hr>
                    <br><br>
                    <input type="reset" name="reset" value="Clear" />
                    <input type="submit" name="submit" value="Submit" />

                </form>
            </div>
        </div> <!-- close main div -->
        <%@ include file="includes/footer.jsp" %>
       </div>
    </body>
</html>
