using Ionic.Zip;
using System;
using System.IO;

namespace CriptografiaJS
{
    public partial class ZipArquivoPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bttnupload_Click(object sender, EventArgs e)
        {
            if (FileUpload.HasFile)
            {
                string nomearquivo = Path.GetFileName(FileUpload.PostedFile.FileName);
                string pathname = Server.MapPath("~/zip/" + nomearquivo);
                FileUpload.SaveAs(pathname);
                lbltxt.Text = "Arquivo upado com sucesso";
            }
        }

        protected void bttnzip_Click(object sender, EventArgs e)
        {
            try
            {
                string pathname = Server.MapPath("~/zip/");
                string[] nomearquivo = Directory.GetFiles(pathname);
                using (ZipFile zip = new ZipFile())
                {
                    zip.Password = "teste1234";
                    zip.AddFiles(nomearquivo,"ZipcomSenha");
                    zip.Save(Server.MapPath("~/zip.zip"));
                    lbltxt.Text = "Arquivo Zip criado com sucesso";
                }
            }
            catch(Exception ex)
            {
                lbltxt.Text = ex.Message;
            }
        }
    }
}