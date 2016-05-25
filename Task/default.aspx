<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Task._default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Irtaza Ahmed Qureshi">

    <title>Task.GroupDocs.Conversion</title>

    <!-- Bootstrap core CSS -->
    <link href="http://getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="http://getbootstrap.com/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="http://getbootstrap.com/examples/starter-template/starter-template.css" rel="stylesheet">

    <link href="content/toastr.min.css" rel="stylesheet" />

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="http://getbootstrap.com/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="http://getbootstrap.com/assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form runat="server">
        <asp:ScriptManager runat="server" />

        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Task.GroupsDocs.Conversion</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="default.aspx">Home</a></li>
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </nav>

        <div class="container">

            <div class="starter-template">
                <h1>GROUPDOCS.NET CONVERSION TASK</h1>
                <p class="lead">
                    Select Your Files with the extensions: .doc, .docx, .xls, .xlsx, .ppt, .pptx and get them converted in .pdf
                </p>
            </div>

            <asp:UpdatePanel ID="updatePanel_Files" runat="server">
                <ContentTemplate>
                    <div class="row">
                        <div class="col-md-4">
                            <asp:ListBox ID="lst_SourceFiles" Style="border: black" CssClass="form-control" runat="server"></asp:ListBox><br />
                            <asp:Label ID="lbl_sourceFiles" runat="server" />
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:Button ID="btn_Convert" runat="server" OnClick="lnkbtn_Convert_OnClick" Text="Convert" CssClass="btn btn-success" />
                        </div>
                        <div class="col-md-4">
                            <asp:ListBox ID="lst_DestinationFiles" Style="border: black" CssClass="form-control" runat="server"></asp:ListBox>
                            <asp:Label ID="lbl_destinationFiles" CssClass="" runat="server" />
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>

            <asp:UpdateProgress ID="UpdateProgress_Files" AssociatedUpdatePanelID="updatePanel_Files" runat="server">
                <ProgressTemplate>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="text-center">

                                <div style="z-index: 9999;">
                                    <img src="ring.gif" alt="Loading" />
                                </div>
                            </div>
                        </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
        </div>
        <!-- /.container -->

        <!-- Bootstrap core JavaScript
    ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
        <script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="http://getbootstrap.com/assets/js/ie10-viewport-bug-workaround.js"></script>
        <script src="Scripts/toastr.min.js"></script>
    </form>
</body>
</html>
