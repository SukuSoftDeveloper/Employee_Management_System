<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRegister.aspx.cs" Inherits="UserRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
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

         #Label1 {
             width: 66px;
         }

    </style>
</head>
<body class="body1">
    <form id="form1" runat="server">  
        <div class="container">
           <h1 align="center">Employee Registration Form</h1>
            <hr />

           <div class="row">
               <div class="col-md-3">

               </div>

             <div class="col-md-5 mar1">
              <h2>Register</h2>
                 <hr />
               <div class="form-group">
                <label>Username:</label>
                <asp:TextBox ID="TextBoxusername" runat="server" CssClass="form-control"></asp:TextBox> 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorForUsername" runat="server"   
ControlToValidate="TextBoxusername" ErrorMessage="Please Enter Username" 
ForeColor="Red"></asp:RequiredFieldValidator> 
                   <asp:Label ID="LabelError" runat="server" ForeColor="Red"></asp:Label>
                   </label>
            </div>
             <div class="form-group">
                <label>Password</label>
                 <asp:TextBox ID="TextBoxpassword"  runat="server" CssClass="form-control" TextMode="password" ></asp:TextBox>  
                  <asp:RequiredFieldValidator ID="RequiredFieldValidatorForPassword" runat="server"   
ControlToValidate="TextBoxpassword" ErrorMessage="Please Enter Password"   
ForeColor="Red"></asp:RequiredFieldValidator>  
            </div>
                   <div class="form-group">
                <label>Confirm Password</label>
                 <asp:TextBox ID="TextBoxcpassword"  runat="server" CssClass="form-control" TextMode="Password" ></asp:TextBox>  
                  <asp:RequiredFieldValidator ID="RequiredFieldValidatorForCPassword" runat="server"   
ControlToValidate="TextBoxcpassword" ErrorMessage="Please Enter Confirm Password"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                       <asp:CompareValidator ID="CompareValidatorForPassword" runat="server" ControlToCompare="TextBoxpassword" ControlToValidate="TextBoxcpassword" Display="Dynamic" ErrorMessage="Both Passwords Should  Be Matched!" ForeColor="Red"></asp:CompareValidator>
            </div>
                
                                  <asp:Button ID="Register" runat="server" Text="Register"  CssClass="btn btn-success btnStyle " OnClick="Register_Click"   /> 
                     
                             <a href="Login_demo.aspx" class="btn btn-info">Back To Login</a>
        </div>
  
               
           </div>  
         
      
                       
                 
                       
                   
                       
                
    </form>  
</body>
</html>
