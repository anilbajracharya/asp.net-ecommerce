<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/admin/admin.Master" CodeBehind="delete.aspx.cs" Inherits="ecommerce.admin.delete" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>


<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="jumbotron">
                    <p>Are you sure you want to delete this</p>
                    <p><asp:Button ID="delete"  class="btn btn-lg btn-danger" runat="server" 
                            Text="Button" onclick="delete_Click" />

        <asp:HiddenField ID="deleteproduct"   runat="server" />
                    <button class="btn btn-lg btn-default" type="button">No</button>
                    </p>
                </div>
</asp:Content>