using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ecommerce.Account.classes;
using System.Text;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.IO;

namespace ecommerce.admin
{
   
    public partial class edit : System.Web.UI.Page
    {
        public SqlDataReader data;
        public string  url;


        private void GenerateThumbnails(double scaleFactor, Stream sourcePath, string targetPath)
        {
            using (var image = System.Drawing.Image.FromStream(sourcePath))
            {
                var newWidth = (int)(image.Width * scaleFactor);
                var newHeight = (int)(image.Height * scaleFactor);
                var thumbnailImg = new Bitmap(newWidth, newHeight);
                var thumbGraph = Graphics.FromImage(thumbnailImg);
                thumbGraph.CompositingQuality = CompositingQuality.HighQuality;
                thumbGraph.SmoothingMode = SmoothingMode.HighQuality;
                thumbGraph.InterpolationMode = InterpolationMode.HighQualityBicubic;
                var imageRectangle = new Rectangle(0, 0, newWidth, newHeight);
                thumbGraph.DrawImage(image, imageRectangle);
                thumbnailImg.Save(targetPath, image.RawFormat);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            string id = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(id))
            {
                indexManager index = new indexManager();

                this.data = index.getproduct(id);

                connectionManager baseurl = new connectionManager();
                url = baseurl.getbasurl("image/product/");


                while (data.Read())
                {
                    txtname.Text = data[data.GetOrdinal("title")].ToString();
                    desc.Text = data[data.GetOrdinal("description")].ToString();
                    img.ImageUrl = url + data[data.GetOrdinal("img")].ToString();

                    price.Text = data[data.GetOrdinal("price")].ToString();
                    stock.Text = data[data.GetOrdinal("stock")].ToString();

                }
            }

        }

        protected void save_Click(object sender, EventArgs e)
        {
            ProductManager edit = new ProductManager();

            StringBuilder sb = new StringBuilder();
            if (imgUpolad.HasFile)
            {
                try
                {
                    sb.AppendFormat(" Uploading file: {0}", imgUpolad.FileName);

                    //saving the file
                    
                    imgUpolad.SaveAs(Server.MapPath("/image/product/upload-" + imgUpolad.FileName));
                    string targetFile=Server.MapPath("/image/product/thumb/upload-" + imgUpolad.FileName);
                    //Showing the file information
                  /*  sb.AppendFormat("<br/> Save As: {0}", imgUpolad.PostedFile.FileName);
                    sb.AppendFormat("<br/> File type: {0}", imgUpolad.PostedFile.ContentType);
                    sb.AppendFormat("<br/> File length: {0}", imgUpolad.PostedFile.ContentLength);
                    sb.AppendFormat("<br/> File name: {0}", imgUpolad.PostedFile.FileName);
                   * */
                    Stream strm = imgUpolad.PostedFile.InputStream;
                    GenerateThumbnails(0.07, strm, targetFile);
                 //   Response.Write(sb.ToString());
                    
                }
                catch (Exception ex)
                {
                    sb.Append("<br/> Error <br/>");
                    sb.AppendFormat("Unable to save file <br/> {0}", ex.Message);
                }
            }
            else
            {
             //  Response.Write(sb.ToString());
            }

            Boolean error=false;
            string titledata = txtname.Text;
            string descdata = desc.Text;
            string img = imgUpolad.FileName;
            string pricedata = price.Text;
            string stockdata =stock.Text ;
            string id = Request.QueryString["id"];
            if (string.IsNullOrEmpty(titledata))
            {
                errortitle.Text = "Please add title";
                error = true;
            }


            if (string.IsNullOrEmpty(descdata))
            {
                errordesc.Text = "Please add Description";
                error = true;
            }



            if (string.IsNullOrEmpty(stockdata))
            {
                errorstock.Text = "Please add stock";
                error = true;
            }


            if (string.IsNullOrEmpty(pricedata))
            {
                errorprice.Text = "Please add price";
                error = true;
            }


        
            if (!error)
            {
                return;
            }

              if (!string.IsNullOrEmpty(id))
              {
                  edit.editProduct(id, titledata, img, descdata, pricedata, stockdata);
              }
              else
              {
                  edit.addProduct(titledata, img, descdata, pricedata, stockdata);
              }
        }

   
    }
}