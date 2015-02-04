<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/admin.Master" CodeBehind="product-manager.aspx.cs" Inherits="ecommerce.admin.product_manager" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>


<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
              <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Product Manager
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-table"></i> Product manager
                            </li>
                        </ol>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                    <a class="btn btn-sm btn-success" href="edit.aspx" type="button">Add</a>
                        <h2>Bordered Table</h2>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>Image</th>
                              a          <th>Title</th>
                                        <th>Stock</th>
                                        <th>Price</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                 <% while (data.Read())
                                    {
                 %>
                                    <tr>
                                        <td><img src="../image/product/<% Response.Write(data[data.GetOrdinal("img")]);%>" alt="<% Response.Write(data[data.GetOrdinal("title")]);%>" /></td>
                                        <td><% Response.Write(data[data.GetOrdinal("title")]);%></td>
                                        
                                        <td><% Response.Write(data[data.GetOrdinal("stock")]);%></td>
                                        <td>$<% Response.Write(data[data.GetOrdinal("price")]);%> </td>
                                        <td><a href="edit.aspx?id=<% Response.Write(data[data.GetOrdinal("id")]);%>" class="btn btn-xs btn-primary" type="button">Edit</a></td>
                                        <td><a href="delete.aspx?id=<% Response.Write(data[data.GetOrdinal("id")]);%>" class="btn btn-xs btn-danger" type="button">Delete</a></td>
                                    </tr>
                                    <%
                                    }
                                         %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    </div>
                    
</asp:Content>
