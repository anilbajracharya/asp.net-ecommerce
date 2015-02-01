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

                <form role="form">

                            <div class="form-group">
                                <label>Name</label>
                                
                                <asp:TextBox ID="txtname" class="form-control" name="txtname" runat="server"></asp:TextBox>
                                <p class="help-block">Name of product</p>
                            </div>

                            <div class="form-group">
                                <label>Text Input with Placeholder</label>
                                <input placeholder="Enter text" class="form-control">
                            </div>

                            <div class="form-group">
                                <label>Static Control</label>
                                <p class="form-control-static">email@example.com</p>
                            </div>

                            <div class="form-group">
                                <label>File input</label>
                                <input type="file">
                            </div>

                            <div class="form-group">
                                <label>Text area</label>
                                <textarea rows="3" class="form-control"></textarea>
                            </div>

                            <div class="form-group">
                                <label>Checkboxes</label>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="">Checkbox 1
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="">Checkbox 2
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="">Checkbox 3
                                    </label>
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Inline Checkboxes</label>
                                <label class="checkbox-inline">
                                    <input type="checkbox">1
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox">2
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox">3
                                </label>
                            </div>

                            <div class="form-group">
                                <label>Radio Buttons</label>
                                <div class="radio">
                                    <label>
                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios">Radio 1
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" value="option2" id="optionsRadios2" name="optionsRadios">Radio 2
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" value="option3" id="optionsRadios3" name="optionsRadios">Radio 3
                                    </label>
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Inline Radio Buttons</label>
                                <label class="radio-inline">
                                    <input type="radio" checked="" value="option1" id="optionsRadiosInline1" name="optionsRadiosInline">1
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="option2" id="optionsRadiosInline2" name="optionsRadiosInline">2
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" value="option3" id="optionsRadiosInline3" name="optionsRadiosInline">3
                                </label>
                            </div>

                            <div class="form-group">
                                <label>Selects</label>
                                <select class="form-control">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label>Multiple Selects</label>
                                <select class="form-control" multiple="">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select>
                            </div>

                <asp:Button ID="save" class="btn btn-default" runat="server" Text="Save" 
                                onclick="save_Click"  />
                           
                            

                            <button class="btn btn-default" type="reset">Reset Button</button>

                        </form>
</asp:Content>
