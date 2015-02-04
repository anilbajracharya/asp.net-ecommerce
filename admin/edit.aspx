<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/admin.Master"  CodeBehind="edit.aspx.cs" Inherits="ecommerce.admin.edit" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>


<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<div class="row">

                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Forms
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> Edit
                            </li>
                        </ol>
                    </div>
                </div>

                
                            <div class="form-group">
                                <label>Name</label>
                                
                                <asp:TextBox ID="txtname" class="form-control" name="txtname" runat="server"></asp:TextBox>
                                
                                    <asp:Literal ID="errortitle"  runat="server"></asp:Literal>
                            </div>

                            <div class="form-group">
                                <label>Description</label>
                               <asp:TextBox class="form-control"
                               
                                    ID="desc" name="desc" runat="server"></asp:TextBox>
                                       <asp:Literal ID="errordesc" runat="server"></asp:Literal>
                            </div>


                              <div class="form-group">
                                <label>price</label>
                               <asp:TextBox class="form-control"
                               
                                    ID="price" name="price" runat="server"></asp:TextBox>
                                    <asp:Literal ID="errorprice"   runat="server"></asp:Literal>
                            </div>

                              <div class="form-group">
                                <label>Stock</label>
                               <asp:TextBox 
                               class="form-control"
                                    ID="stock" name="stock" runat="server"></asp:TextBox>
                                    <asp:Literal ID="errorstock"   runat="server"></asp:Literal>
                            </div>


                              <div class="form-group">
                                <label><asp:Image ID="img" name="img" runat="server" /></label>
                                <asp:FileUpload ID="imgUpolad" name="imgUpolad" runat="server" />
                            </div>

                <asp:Button ID="save" class="btn btn-default" runat="server" Text="Save" 
                                onclick="save_Click"  />
                           
                            

                            <button class="btn btn-default" type="reset">Reset Button</button>

                      
</asp:Content>
