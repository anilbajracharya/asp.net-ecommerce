<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="menu.ascx.cs" Inherits="ecommerce.controls.menu" %>

<ul id="Ul1" runat="server">
          <!--<li class="home"><a title="Home" href="index-2.html"><span>Home</span></a></li>-->
          <% while (data.Read())
            {
                 %>
                 <li class="categories_hor"><a> <% Response.Write(data[data.GetOrdinal("menu")]);%></a>
            <div>
              <div class="column"> <a href="category.html">Electronics</a>
                <div>
                  <ul>
                    <li><a href="category.html">Laptops (0)</a></li>
                    <li><a href="category.html">Desktops (0)</a></li>
                    <li><a href="category.html">Components (1)</a></li>
                    <li><a href="category.html">Software (1)</a></li>
                    <li><a href="category.html">Phones &amp; PDAs (4)</a></li>
                    <li><a href="category.html">Cameras (2)</a></li>
                  </ul>
                </div>
              </div>
              <div class="column"> <a href="category.html">Jewellery</a>
                <div>
                  <ul>
                    <li><a href="category.html">Children's Jewellery (0)</a></li>
                    <li><a href="category.html">Men's Jewellery (1)</a></li>
                    <li><a href="category.html">Women's Jewellery (0)</a></li>
                    <li><a href="category.html">Sample Test (0)</a></li>
                    <li><a href="category.html">Sample Test11 (0)</a></li>
                    <li><a href="category.html">Sample Test12 (0)</a></li>
                  </ul>
                </div>
              </div>
              <div class="column"> <a href="category.html">Shoes</a>
                <div>
                  <ul>
                    <li><a href="category.html">Children's Shoes (1)</a></li>
                    <li><a href="category.html">Men's Shoes (2)</a></li>
                    <li><a href="category.html">Women's Shoes (1)</a></li>
                    <li><a href="category.html">Test Sample (0)</a></li>
                    <li><a href="category.html">Test Sample1 (0)</a></li>
                  </ul>
                </div>
              </div>
              <div class="column"> <a href="category.html">Clothing</a>
                <div>
                  <ul>
                    <li><a href="category.html">Men (1)</a></li>
                    <li><a href="category.html">Women (1)</a></li>
                    <li><a href="category.html">Boys (0)</a></li>
                    <li><a href="category.html">Girls (0)</a></li>
                    <li><a href="category.html">Accessories (0)</a></li>
                    <li><a href="category.html">Sample Test21 (0)</a></li>
                  </ul>
                </div>
              </div>
              <div class="column"> <a href="category.html">Kids</a>
                <div>
                  <ul>
                    <li><a href="category.html">Toys Kids (0)</a></li>
                    <li><a href="category.html">Games (1)</a></li>
                    <li><a href="category.html">Sample Test22 (0)</a></li>
                    <li><a href="category.html">Sample Test15 (1)</a></li>
                    <li><a href="category.html">Sample Kids (1)</a></li>
                    <li><a href="category.html">Sample Test6 (0)</a></li>
                  </ul>
                </div>
              </div>
              <div class="column"> <a href="category.html">Watches</a>
                <div>
                  <ul>
                    <li><a href="category.html">Women's Watches (1)</a></li>
                    <li><a href="category.html">Men's Watches (0)</a></li>
                    <li><a href="category.html">Children's Watches (1)</a></li>
                    <li><a href="category.html">Sample16 (0)</a></li>
                    <li><a href="category.html">Sample17 (0)</a></li>
                    <li><a href="category.html">test 18 (0)</a></li>
                  </ul>
                </div>
              </div>
              <div class="column"> <a href="category.html">Sports</a>
                <div>
                  <ul>
                    <li><a href="category.html">Women's Sports (1)</a></li>
                    <li><a href="category.html">Children's Sports (0)</a></li>
                    <li><a href="category.html">Men's Sports (1)</a></li>
                    <li><a href="category.html">test 7 (0)</a></li>
                    <li><a href="category.html">Sample 8 (0)</a></li>
                    <li><a href="category.html">test 9 (0)</a></li>
                  </ul>
                </div>
              </div>
              <div class="column"> <a href="category.html">Health</a>
                <div>
                  <ul>
                    <li><a href="category.html">Sample Test1 (1)</a></li>
                    <li><a href="category.html">Sample Test2 (0)</a></li>
                    <li><a href="category.html">test 20 (0)</a></li>
                    <li><a href="category.html">test 21 (0)</a></li>
                    <li><a href="category.html">test 22 (0)</a></li>
                  </ul>
                </div>
              </div>
              <div class="column"> <a href="category.html">Furniture</a>
                <div>
                  <ul>
                    <li><a href="category.html">Bedrooms Furniture (0)</a></li>
                    <li><a href="category.html">Kidsrooms furniture (0)</a></li>
                    <li><a href="category.html">Kitchen Furniture (1)</a></li>
                    <li><a href="category.html">Showcase Furniture (0)</a></li>
                    <li><a href="category.html">Table Furniture (1)</a></li>
                    <li><a href="category.html">Wall Furniture (0)</a></li>
                  </ul>
                </div>
              </div>
              <div class="column"><a href="category.html">Books</a>
                <div>
                  <ul>
                    <li><a href="category.html">Audio Books (1)</a></li>
                    <li><a href="category.html">Comedy Book (1)</a></li>
                    <li><a href="category.html">Comics Books (0)</a></li>
                    <li><a href="category.html">Computer Book (1)</a></li>
                    <li><a href="category.html">Cookies Books (0)</a></li>
                    <li><a href="category.html">English Books (1)</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </li>


               
           <% } %>
          
          <!--<li><a target="_blank" href="#">Headers</a>
            <div>
              <ul>
                <li><a href="index-2.html">Header Style 1</a></li>
                <li><a href="header-footer-2.html">Header Style 2</a></li>
                <li><a href="header-footer-3.html">Header Style 3</a></li>
              </ul>
            </div>
          </li>
          <li><a target="_blank" href="#">Menus</a>
            <div>
              <ul>
                <li><a href="index-2.html">Horizontal Categories</a></li>
                <li><a href="header-footer-2.html">Vertical Categories</a></li>
                <li><a href="header-footer-3.html">Simple Categories</a></li>
              </ul>
            </div>
          </li>
          <li><a target="_blank" href="#">Sliders</a>
            <div>
              <ul>
                <li><a href="index-2.html">Nivo Slider</a></li>
                <li><a href="header-footer-2.html">Flex Slider</a></li>
              </ul>
            </div>
          </li>
          <li><a target="_blank" href="#">Footers</a>
            <div>
              <ul>
                <li><a href="index-2.html">Footer Style 1</a></li>
                <li><a href="header-footer-2.html">Footer Style 2</a></li>
                <li><a href="header-footer-3.html">Footer Style 3</a></li>
              </ul>
            </div>
          </li>
          <li><a href="#">Custom Block</a>
            <div class="custom_block">
              <ul>
                <li>
                  <table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">
                    <tbody>
                      <tr>
                        <td><h3>You can insert any content here.</h3>
                          <p>&nbsp;</p></td>
                      </tr>
                      <tr>
                        <td><strong><img alt="responsive" src="image/product/responsive.jpg" style="width: 250px; height: 150px; border-width: 0px; border-style: solid; float: left; margin-left: 10px; margin-right: 10px;" />Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing.</td>
                      </tr>
                    </tbody>
                  </table>
                </li>
              </ul>
            </div>
          </li>
          <li><a>My Account</a>
            <div>
              <ul>
                <li><a href="#">My Account</a></li>
                <li><a href="#">Order History</a></li>
                <li><a href="#" id="wishlist-total">Wish List (0)</a></li>
                <li><a href="#">Newsletter</a></li>
              </ul>
            </div>
          </li>
          <li><a>Information</a>
            <div>
              <ul>
                <li><a href="about-us.html">About Us</a></li>
                <li><a href="about-us.html">Delivery Information</a></li>
                <li><a href="about-us.html">Privacy Policy</a></li>
                <li><a href="elements.html">Elements</a></li>
              </ul>
            </div>
          </li>
          <li><a href="contact-us.html">Contact Us</a></li>-->
        </ul>