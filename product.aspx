<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Product.master" CodeBehind="product.aspx.cs" Inherits="ecommerce.product" %>



<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
  <%string year = Convert.ToString(Page.RouteData.Values["ids"]);
    Response.Write(year);


    
                 %>
      
          <div class="left">
            <div class="image"><a rel="adjustX: 0, adjustY:0, tint:'#000000',tintOpacity:0.2, zoomWidth:360, position:'inside', showTitle:false" id="zoom1" class="cloud-zoom colorbox" title="Canon EOS 5D" href="image/product/canon_eos_5d_1-500x500.jpg"><img id="image" alt="Canon EOS 5D" title="Canon EOS 5D" src="image/product/canon_eos_5d_1-350x350.jpg"><span id="zoom-image"><i class="zoom_bttn"></i> Zoom</span></a></div>
            <div class="image-additional"> <a rel="useZoom: 'zoom1', smallImage: 'image/product/canon_eos_5d_1-350x350.jpg' " class="cloud-zoom-gallery" title="Canon EOS 5D" href="image/product/canon_eos_5d_1-500x500.jpg"><img width="62" alt="Canon EOS 5D" title="Canon EOS 5D" src="image/product/canon_eos_5d_1-350x350.jpg"></a> <a rel="useZoom: 'zoom1', smallImage: 'image/product/canon_eos_5d_3-350x350.jpg' " class="cloud-zoom-gallery" title="Canon EOS 5D" href="image/product/canon_eos_5d_3-500x500.jpg"><img width="62" alt="Canon EOS 5D" title="Canon EOS 5D" src="image/product/canon_eos_5d_3-350x350.jpg"></a> <a rel="useZoom: 'zoom1', smallImage: 'image/product/canon_eos_5d_2-350x350.jpg' " class="cloud-zoom-gallery" title="Canon EOS 5D" href="image/product/canon_eos_5d_2-500x500.jpg"><img width="62" alt="Canon EOS 5D" title="Canon EOS 5D" src="image/product/canon_eos_5d_2-350x350.jpg"></a> </div>
          </div>
          <div class="right">
            <div class="description"> <span>Brand:</span> <a href="#">Canon</a><br>
              <span>Product Code:</span> Product 3<br>
              <span>Reward Points:</span> 200<br>
              <span>Availability:</span> In Stock</div>
            <div class="price">Price: <span class="price-old">
                <asp:Literal ID="lit_no_price" runat="server">$119.50</asp:Literal></span> <span class="price-new"><asp:Literal ID="lit_price" runat="server">$119.50</asp:Literal></span> <br>
              <span class="price-tax">Ex Tax: $80.00</span><br>
            </div>
            <div class="options">
              <h2>Available Options</h2>
              <div class="option" id="option-226"> <span class="required">*</span> <b>Select:</b><br>
                <select name="option">
                  <option value=""> --- Please Select --- </option>
                  <option value="15">Red</option>
                  <option value="16">Blue</option>
                </select>
              </div>
            </div>
            <div class="cart">
              <div>
                <div class="qty"> <strong>Qty:</strong> <a href="javascript:void(0);" class="qtyBtn mines">-</a>
                  <input type="text" value="1" size="2" name="quantity" class="w30" id="qty">
                  <a href="javascript:void(0);" class="qtyBtn plus">+</a>
                  <input type="hidden" value="30" size="2" name="product_id">
                  <div class="clear"></div>
                </div>
                <input type="button" class="button" id="button-cart" value="Add to Cart">
              </div>
              <div><a class="wishlist" href="#">Add to Wish List</a> <a class="wishlist" href="#">Add to Compare</a></div>
            </div>
            <div class="review">
              <div><img alt="2 reviews" src="image/stars-3.png">&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');">0 reviews</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');">Write a review</a></div>
            </div>
          
          </div>
        
</asp:Content>