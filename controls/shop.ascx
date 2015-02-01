<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="banner.ascx.cs" Inherits="ecommerce.shop" %>
 <% while (data.Read())
            {
                 %>
    <li>
                    <div class="slide-inner">
                      <div class="image"><a href="product.html"><img src="image/product/<% Response.Write(data[data.GetOrdinal("img")]);%>" alt="<% Response.Write(data[data.GetOrdinal("title")]);%>" /></a></div>
                      <div class="name"><a href="http://localhost/polishop/index.php?route=product/product&amp;product_id=43"><% Response.Write(data[data.GetOrdinal("title")]);%></a></div>
                      <div class="price"> $<% Response.Write(data[data.GetOrdinal("price")]);%> </div>
                      <div class="cart">
                        <input type="button" value="Add to Cart" class="button" />
                      </div>
                      <div class="clear"></div>
                    </div>
                  </li>

                  <% } %>