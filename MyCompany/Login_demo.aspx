<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login_demo.aspx.cs" Inherits="Login_demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .body1{
            background-color:darkcyan;
        }
        .mar1{
            margin-top:20px;
            border:0px solid black;
            width:600px;
            padding:20px;
            background-color:lightblue;
            border-radius:10px;
        }
        .mar2{
            margin-top:20px;
        }
       /* .btnStyle{
            width:100%;
        }*/

    </style>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body class="body1">
    <form id="form1" runat="server">  
        <div class="container">
           
           <h1 align="center">Employee Login Form</h1>
            <hr />

           <div class="row">
               <div class="col-md-3">

               </div>

             <div class="col-md-5 mar1">
              <h2>Login</h2>
                  <asp:Label ID="ErrorLabel" runat="server" CssClass="text-success"></asp:Label> 
                 <hr />
               <div class="form-group">
                <label>Username:</label>
                <asp:TextBox ID="TextBoxusername" runat="server" CssClass="form-control border-0 shadow form-control-lg text-base "></asp:TextBox> 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorForUsername" runat="server"   
ControlToValidate="TextBoxusername" ErrorMessage="Please Enter  Username" 
ForeColor="Red"></asp:RequiredFieldValidator> 
            </div>
             <div class="form-group">
                <label>Password</label>
                 <asp:TextBox ID="TextBoxpassword"  runat="server" CssClass="form-control" TextMode="Password" ></asp:TextBox>  
                  <asp:RequiredFieldValidator ID="RequiredFieldValidatorForPassword" runat="server"   
ControlToValidate="TextBoxpassword" ErrorMessage="Please Enter Password"   
ForeColor="Red"></asp:RequiredFieldValidator>  
            </div>
                 <asp:Button ID="LoginButton" runat="server" Text="Log In" onclick="LoginButton_Click" CssClass="btn btn-primary btnStyle "  /> 
                                 <%-- <asp:Button ID="Register" runat="server" Text="Register"  CssClass="btn btn-success btnStyle " OnClick="Register_Click"  /> --%>
                 <a href="UserRegister.aspx" class="btn btn-success">Register</a>
        </div>
  
                <div class="col-md-4 mar2">
  
               </div>
           </div>  
         
      
                       
                 
                       
                   
                       
                
 </form>  
   

</body>
</html>
