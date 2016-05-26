# Task.GroupDocs.Conversion
This is a small demo of GroupDocs Conversion from any format to PDF format in a specified folder hardcoded in the code. You can change the code according to your needs if you want to test out the GroupDocs API for document conversion purposes.

##How To Build?
Clone the repository and sync it locally on your system.
Open *VisualStudio* 2013 or higher and load the solution file of the project. (Task.SLN) and build the project before exceuting.

##How To Insert Files For Conversion?
Simply place your required files in the INPUT folder on the root directory of the project and hit the *CONVERT button after running the application and you will shortly receive the converted file(s) in the OUTPUT_DIR folder on the root directory as a .PDF file.

###FAQ's

Question: If I place the same name files but different extensions?
Answer: Due to no check in this simple application the file will be automatically overwrited by the last converted file. For Example: If you insert sample1.doc and sample1.docx and both files have respectively different content in them while processing these two files form this application you will get only the sample1.pdf (1 file in the OUTPUT_DIR folder) because the system will overwrite & replace withthe most recent converted file.

Question: Can it convert multiple files?
Answer: Yes this application easily converts multiple files from their other file formats to PDF without any issue. But this conversion time may varry system to system depending upon on your processor and ram speed.