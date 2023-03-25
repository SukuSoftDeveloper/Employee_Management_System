<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body{
            background-color:lightblue;
        }
        /*.card{
            background-color:darkcyan;
        }*/
        table th   {
             background-color:cadetblue;
        }
        
        navbar navbar-default{
            background-color:darkcyan;
        }
      .mar{
          margin-left:440px;
      }
      .margin2{
            margin-left:20px;
           
      }
        
    </style>

   <h1 align="center" class="h1"> Employee Management Form</h1>
    <hr />
 <form id="form1" >
    <div class="container mar" >
                <div class="form-group " >
                     <label>Employee Name</label>
                      <asp:TextBox ID="TxtEmpName" runat="server" CssClass="form-control" placeholder="Enter Name"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" Display="Dynamic" ControlToValidate="TxtEmpName" ErrorMessage="Please Enter First Name" ForeColor="Red"></asp:RequiredFieldValidator>
                 </div>
                 <div class="form-group ">
                     <label>Employee Surname</label>
                      <asp:TextBox ID="TxtEmpSname" runat="server" CssClass="form-control" placeholder="Enter SurName"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvEmpSname" runat="server" Display="Dynamic" ControlToValidate="TxtEmpSname" ErrorMessage="Please Enter Employee LastName" ForeColor="Red"></asp:RequiredFieldValidator>
                 </div>
                 <div class="form-group ">
                     <label>Date Of Birth</label>
                     <asp:TextBox ID="TxtDob" runat="server" CssClass="form-control" placeholder="DD/MM/YYYY" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvEmpDob" runat="server" Display="Dynamic" ControlToValidate="TxtDob" ErrorMessage="Please Enter Date Of Birth" ForeColor="Red"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="revDOB" runat="server" ErrorMessage="Invali Date Format,Please Enter like DD/MM/YYYY Format." ControlToValidate="TxtDob" Display="Dynamic" ForeColor="Red" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$" ></asp:RegularExpressionValidator>
                   
                 </div>
                 <div class="form-group ">
                     <label>State</label>
                     <asp:DropDownList ID="DropDownListState" runat="server" CssClass="form-control" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="StateName" DataValueField="StateName" >
                         <asp:ListItem Value="Select">--Please Select--</asp:ListItem>
                      
                     </asp:DropDownList>

                    

                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyCompanyConnectionString %>" SelectCommand="SELECT [StateName] FROM [State]"></asp:SqlDataSource>

                    

                     <asp:RequiredFieldValidator ID="rfvCity" runat="server" Display="Dynamic" ControlToValidate="DropDownListState" ErrorMessage="Please Select State " ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>
                 </div>
                 <div class="form-group ">
                     <label>Gender</label>
                      <asp:DropDownList ID="DropDownListGender" runat="server" CssClass="form-control" >
                          <asp:ListItem>--Please Select--</asp:ListItem>
                          <asp:ListItem>Male</asp:ListItem>
                          <asp:ListItem>Female</asp:ListItem>
                      </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="rfvGender" runat="server" Display="Dynamic" ControlToValidate="DropDownListGender" ErrorMessage="Please Select Gender From The Dropdwon" ForeColor="Red" InitialValue="--Please Select--"></asp:RequiredFieldValidator>
              </div>
         <asp:Button ID="Button_Insert" runat="server" Text="Insert Record" OnClick="Btn_InsertRecord" CssClass="btn btn-primary  " />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <%-- <asp:Button ID="Button_Cancel" runat="server" Text="Cancel Record" OnClick="Button_CancelRecord" CssClass="btn btn-success " />--%>
      <br /><br />
     </div>  
</form>  
   
     <div class="margin2">
       
       </div>
       <br />
             


</asp:Content>
