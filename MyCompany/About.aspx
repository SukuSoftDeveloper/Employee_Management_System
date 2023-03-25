<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .jumbotron{
            background-color:lightblue;
                
        }
        body{
            background-color:lightcyan;
        }
        
    </style>
   <div class="container">
       <div class="jumbotron " align="center">
           <h2><b>Welcome To</b></h2>
           <h1 class="text-info"><b>Employee Management System</b></h1>
           <p class="text-primary">Click The Below Link to refer Employee Data</p>
          <asp:Button ID="button1" Text="Click Here" runat="server" CssClass="btn btn-primary btn-lg" OnClick="Btn_ClickHere"/>
       </div>
   </div>
</asp:Content>
