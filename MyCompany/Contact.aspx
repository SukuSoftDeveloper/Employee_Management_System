<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        input{
         padding:5px;
         border-radius:8px;
        }
        table th{
            background-color:darkcyan;
        }
        body{
             background-color:lightcyan;
        }
    </style>
  <br /><br />
 <div class="container" align="center" class="">
        <div class="form-group">
           <b>Employee ID:</b><asp:TextBox ID="TxtSearchRecord" runat="server" CssClass="form-inline"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search Records" CssClass="btn btn-primary" OnClick="Btn_SearchRecord" />
        </div>
    </div>
    <hr /> 
    <asp:Label ID="LabelError" runat="server" ForeColor="Red"></asp:Label>
 
   <div align="center">
           <asp:GridView ID="GridView" runat="server"  CssClass="table table-hover" DataKeyNames="EmpID" OnRowCancelingEdit="GridView_RowCancelingEdit" OnRowEditing="GridView_RowEditing" OnRowUpdating="GridView_RowUpdating" Width="800px" OnRowDeleting="GridView_RowDeleting" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True" EmptyDataText="<h4>No Records Found!,  Please Search Another Record.</h4>" OnRowDataBound="OnRowDataBound" >
                                 <Columns>
                                     <asp:BoundField DataField="EmpID" HeaderText="Employee ID" ReadOnly="True" />
                                     <asp:BoundField DataField="EmpFname" HeaderText="Employee Name" />
                                     <asp:BoundField DataField="EmpLname" HeaderText="Employee Surname" />
                                     <asp:BoundField DataField="EmpDOB" HeaderText="Date Of Birth"  DataFormatString = "{0:dd/MM/yyyy}"/>
    
                                  <asp:BoundField DataField="City" HeaderText="State" />
                                     <asp:BoundField DataField="Sex" HeaderText="Gender" />
                                     <asp:CommandField ButtonType="Button" ControlStyle-CssClass="btn btn-primary" ShowEditButton="True">
                                     <ControlStyle  />
                                     </asp:CommandField>
                                   
                                      <asp:TemplateField>
      <ItemTemplate>
            <asp:Button ID="deletebtn" runat="server" CommandName="Delete" CssClass="btn btn-danger" 
             Text="Delete" OnClientClick="return confirm('Are you sure want to Delete?');" />
      </ItemTemplate>
</asp:TemplateField>
                                 </Columns>
                               
                             </asp:GridView>
    </div>
    
  
   
</asp:Content>
