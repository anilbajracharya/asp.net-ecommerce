<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ecommerce.admin._default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
    Username:-<input type="text" id="uname" name="name" runat=server />
    Username:-<input id="pwd" type="password" name="pwd" runat=server />
    
    <asp:Button ID="login" runat="server" Text="LOGIN" onclick="login_Click"  />
    <div>
    
    </div>
    </form>
</body>
</html>
