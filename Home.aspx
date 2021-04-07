<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CriptografiaJS.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="jquery-3.5.1.min.js"></script>
 <script>
        function GetEncrypt() {
            var params = " {'textoExemplo':'Mensagem exemplo que sera criptografada'}";
            $.ajax
              ({
                  type: "POST",
                  url: "Home.aspx/Encrypt",
                  data: params,
                  contentType: "application/json;charset=utf-8",
                  dataType: "json",
                  success: function (result) {
                      // myString = result.d;
                      alert(result.d);
                  },
                  error: function (err) {
                      alert(err);
                  }
              });
        }
 </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <input id="GetMessage" type="button" value="Pegar Mensagens"  onclick="GetEncrypt();"/>
            <asp:Button runat="server" ID="btnCSharp" Text="C-Sharp" OnClick="btnCSharp_Click" />
        </div>
    </form>
</body>
</html>
