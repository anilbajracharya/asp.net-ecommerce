<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="banner.ascx.cs" Inherits="ecommerce.controls.banner" %>
<% while (databanner.Read())
            {
                 %>
<a class="nivo-imageLink" href="#"><img src="image/slider/<% Response.Write(databanner[databanner.GetOrdinal("img")]);%>" alt="slide-<% Response.Write(databanner[databanner.GetOrdinal("id")]);%>" /></a> 
<%} %>
