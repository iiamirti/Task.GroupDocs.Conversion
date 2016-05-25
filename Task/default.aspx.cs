using System;
using System.Collections;
using System.IO;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using GroupDocs.Conversion;
using GroupDocs.Conversion.Config;
using GroupDocs.Conversion.Converter.Option;
using GroupDocs.Conversion.Handler;

namespace Task
{
    public partial class _default : System.Web.UI.Page
    {
        public static ArrayList Files = new ArrayList();

        protected void Page_Load(object sender, EventArgs e)
        {
            /*
             GET ALL THE FILES IN THE UPLOAD LIST AND POPULATE
              */
            string[] myFiles = Directory.GetFiles(Server.MapPath("~/Uploads/"));
            foreach (var items in myFiles)
            {
                lst_SourceFiles.Items.Add(new ListItem(Path.GetFileName(items), items));
            }

            lbl_sourceFiles.Text = @"All " + myFiles.Length + " have been successfully synced!";

            /*
             * CLEARS THE OUTPUT_DIRECTORY ON RUNTIME TO CONVERT 
             */
            Directory.GetFiles(Server.MapPath("~/OutputDir/")).ToList().ForEach(File.Delete);
        }

        private string filePath, cachePath, outputPath = @"";
        
        protected void lnkbtn_Convert_OnClick(object sender, EventArgs e)
        {
            /*
             CONVERT ALL THE FILES TO PDF FORMAT & STORE IN OUTPUT_DIRECTORY
             */
            foreach (ListItem files in lst_SourceFiles.Items)
            {
                //SET UPLOAD FOLDER
                filePath = Server.MapPath("~/Uploads/");
                
                //SET CACHE FOLDER WHERE THE CONVERSION TEMPORARY FILES ARE RUNNING
                cachePath = Server.MapPath("~/Cache/");

                //SET OUTPUT FOLDER WHERE THE ACTUAL FILES WILL BE PLACED AFTER CONVERSION
                outputPath = Server.MapPath("~/OutputDir/");

                //ORIGINAL FILE NAME WITH EXTENSION e.g SAMPLEFILE1.DOC
                string file = files.Text;

                //CONVERSION CONFIGURATION FOR DEFAULT
                ConversionConfig _conConfg = new ConversionConfig
                {
                    StoragePath = filePath,
                    CachePath = cachePath,
                    OutputPath = outputPath
                };

                ConversionHandler conversionHandler = new ConversionHandler(_conConfg);

                //CONVERSION TO PDF VIA FILE PATH
                var convertedPDF = conversionHandler.Convert<string>(file, new PdfSaveOptions
                {
                    ConvertFileType = PdfSaveOptions.PdfFileType.Pdf,
                    OutputType = OutputType.String
                });
            }

            //GETS ALL THE CONVERTED FILES FROM OUTPUT FOLDER
            string[] myOutputFiles = Directory.GetFiles(outputPath);
            foreach (var items in myOutputFiles)
            {
                lst_DestinationFiles.Items.Add(new ListItem(Path.GetFileName(items), items));
            }

            lbl_destinationFiles.Text = @"All " + myOutputFiles.Length + " have been successfully synced!";
        }
    }
}