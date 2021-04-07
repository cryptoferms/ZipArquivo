<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZipArquivoPassword.aspx.cs" Inherits="CriptografiaJS.ZipArquivoPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <h3 style="color: #0000FF; font-style: italic">Pagina exemplo de criação de arquivo Zip com senha</h3>  
    <div style="height: 121px">  
        <asp:FileUpload ID="FileUpload" runat="server" />  
        <br />  
        <br />  
        <asp:Button ID="bttnupload" runat="server" Text="Upload Arquivo" Font-Bold="True" OnClick="bttnupload_Click"  />     
        <asp:Button ID="bttnzip" runat="server" Text="Criar Zip" Font-Bold="True" OnClick="bttnzip_Click" />        
        <br />  
        <br />  
        <asp:Label ID="lbltxt" runat="server" ForeColor="#CC0000"></asp:Label>  
    </div>  
    </form>
</body>
</html>
