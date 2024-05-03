<%@ Page Language="C#" MasterPageFile="BlocksMasterPage.master" AutoEventWireup="true" CodeFile="students_retired.aspx.cs" Inherits="students" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        var studentsElement = document.getElementById("StudentsMenu");
        if (studentsElement) {
            studentsElement.classList.add("active");
        }
    </script>
    <style>
        .panel {
            margin: 10px;
        }
    </style>
    <!--section-row start-->
    <section class="section-row ">
        <div class="container">
            <div class="page-head">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div id="breadcrumb" class="push-left" role="navigation" aria-label="breadcrumb">
                            <ul class="breadcrumbs">
                                <li><a href="index.aspx" class="home"><span>Home</span></a></li>
                                <li class="current">Students</li>
                            </ul>
                            <!-- .breadcrumbs -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container" id="row-content">
            <div class="switchViewHead">
                <div class="row">
                    <div class="col-lg-11 col-md-11 col-sm-11 col-xs-12">
                        <h1>Students</h1>
                    </div>
                    <div class="col-lg-1 col-md-1 col-sm-1 hidden-xs hide">
                        <div class="viewSwicther push-right clearfix">
                            <a href="#" tabindex="0" class="thumbs-view-btn" aria-label="Grid View" title="Grid View"><span class="icon-thumbs-view" aria-hidden="true"></span></a>
                            <a href="#" tabindex="0" class="thumbs-list-view-btn" aria-label="List View" title="List View"><span class="icon-list-view" aria-hidden="true"></span></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <%--                <div class="col-xs-12">
                    <div class="vc_row wpb_row vc_row-fluid">
                        <div class="wpb_column vc_column_container vc_col-sm-12">
                            <div class="vc_column-inner">
                                <div class="wpb_wrapper">
                                    <div class="wpb_text_column wpb_content_element ">
                                        <div class="wpb_wrapper">
                                            <p>This page displays all the options available for students.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>
                <style>
                    .customCls {
                        display: flex;
                        overflow: scroll;
                    }

                    /* Hide scrollbar for Chrome, Safari, and Opera */
                    ::-webkit-scrollbar {
                        display: none;
                    }

                    /* Optional: You might also want to style the thumb and track */
                    ::-webkit-scrollbar-thumb {
                        display: none; /* Hide the thumb */
                    }

                    ::-webkit-scrollbar-track {
                        display: none; /* Hide the track */
                    }

                    @media only screen and (max-width: 1000px) {
                        .customCls {
                            display: flex;
                            flex-flow: row wrap;
                            /*flex-wrap:wrap;
                            flex-direction: column;*/
                        }
                    }

                    .panelMainHeading {
                        min-height: 75px;
                    }
                </style>

                <div class="row customCls">

                    <%--<div class="col-sm-2"> &nbsp;</div>--%>
                    <div class="col-sm-4 hvr hvr-box-shadow-inset">
                        <div class="panel panel-primary" style="border-color: #006582; box-shadow: 6px 6px 8px rgb(0 0 0 / 0.2);">
                            <div class="panel-heading panelMainHeading" style="background-color: #006582; color: white;">
                                <h3 class="panel-title">अन्य पिछड़ा वर्ग (Other Backward Class)</h3>
                            </div>
                            <div class="panel-body" style="padding: 0px">
                                <center>
                                    <div class="panel panel-primary hvr hvr-bob" style="border-color: #589DBF; text-align: left;">
                                        <div class="panel-heading" style="background-color: #589DBF; color: white;">
                                            <h3 class="panel-title">Prematric</h3>
                                        </div>
                                        <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton13" PostBackUrl="RegistrationFormPrematric.aspx">New Registration</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton14" PostBackUrl="RegistrationFormPrematric.aspx">Login Fresh</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton15" PostBackUrl="RegistrationFormPrematric.aspx">Login Renewal</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel panel-primary hvr hvr-bob" style="border-color: #589DBF; text-align: left;">
                                        <div class="panel-heading" style="background-color: #589DBF; color: white;">
                                            <h3 class="panel-title">Postmatric Inter (11-12)</h3>
                                        </div>
                                        <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton10" PostBackUrl="RegistrationFormPrematric.aspx">New Registration</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton11" PostBackUrl="RegistrationFormPrematric.aspx">Login Fresh</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton12" PostBackUrl="RegistrationFormPrematric.aspx">Login Renewal</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel panel-primary hvr hvr-bob" style="border-color: #589DBF; text-align: left;">
                                        <div class="panel-heading" style="background-color: #589DBF; color: white;">
                                            <h3 class="panel-title">Postmatric Otherthan Inter</h3>
                                        </div>
                                        <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton19" PostBackUrl="RegistrationFormPrematric.aspx">New Registration</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton20" PostBackUrl="RegistrationFormPrematric.aspx">Login Fresh</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton21" PostBackUrl="RegistrationFormPrematric.aspx">Login Renewal</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                </center>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 hvr hvr-box-shadow-inset">
                        <div class="panel panel-primary" style="border-color: #006582; box-shadow: 6px 6px 8px rgb(0 0 0 / 0.2);">
                            <div class="panel-heading panelMainHeading" style="background-color: #006582; color: white;">
                                <h3 class="panel-title">अल्पसंख्यक (Minorities)</h3>
                            </div>
                            <div class="panel-body" style="padding: 0px">
                                <center>
                                    <div class="panel panel-primary hvr hvr-bob" style="border-color: #589DBF; text-align: left;">
                                        <div class="panel-heading" style="background-color: #589DBF; color: white;">
                                            <h3 class="panel-title">Prematric</h3>
                                        </div>
                                        <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton16" PostBackUrl="RegistrationFormPrematric.aspx">New Registration</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton17" PostBackUrl="RegistrationFormPrematric.aspx">Login Fresh</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton18" PostBackUrl="RegistrationFormPrematric.aspx">Login Renewal</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel panel-primary hvr hvr-bob" style="border-color: #589DBF; text-align: left;">
                                        <div class="panel-heading" style="background-color: #589DBF; color: white;">
                                            <h3 class="panel-title">Postmatric Inter (11-12)</h3>
                                        </div>
                                        <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton22" PostBackUrl="RegistrationFormPrematric.aspx">New Registration</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton23" PostBackUrl="RegistrationFormPrematric.aspx">Login Fresh</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton24" PostBackUrl="RegistrationFormPrematric.aspx">Login Renewal</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel panel-primary hvr hvr-bob" style="border-color: #589DBF; text-align: left;">
                                        <div class="panel-heading" style="background-color: #589DBF; color: white;">
                                            <h3 class="panel-title">Postmatric Otherthan Inter</h3>
                                        </div>
                                        <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton25" PostBackUrl="RegistrationFormPrematric.aspx">New Registration</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton26" PostBackUrl="RegistrationFormPrematric.aspx">Login Fresh</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton27" PostBackUrl="RegistrationFormPrematric.aspx">Login Renewal</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                </center>
                            </div>
                        </div>
                    </div>

                    <%--<div class="col-sm-2"> &nbsp;</div>--%>

                    <div class="col-sm-4 hvr hvr-box-shadow-inset">
                        <div class="panel panel-primary" style="border-color: #006582; box-shadow: 6px 6px 8px rgb(0 0 0 / 0.2);">
                            <div class="panel-heading panelMainHeading" style="background-color: #006582; color: white;">
                                <h3 class="panel-title">अनुसूचित जनजाति (Scheduled Tribes)</h3>
                            </div>
                            <div class="panel-body" style="padding: 0px">
                                <center>
                                    <div class="panel panel-primary hvr hvr-bob" style="border-color: #589DBF; text-align: left;">
                                        <div class="panel-heading" style="background-color: #589DBF; color: white;">
                                            <h3 class="panel-title">Prematric</h3>
                                        </div>
                                        <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton1" PostBackUrl="RegistrationFormPrematric.aspx">New Registration</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton2" PostBackUrl="RegistrationFormPrematric.aspx">Login Fresh</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton3" PostBackUrl="RegistrationFormPrematric.aspx">Login Renewal</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel panel-primary hvr hvr-bob" style="border-color: #589DBF; text-align: left;">
                                        <div class="panel-heading" style="background-color: #589DBF; color: white;">
                                            <h3 class="panel-title">Postmatric Inter (11-12)</h3>
                                        </div>
                                        <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton28" PostBackUrl="RegistrationFormPrematric.aspx">New Registration</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton29" PostBackUrl="RegistrationFormPrematric.aspx">Login Fresh</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton30" PostBackUrl="RegistrationFormPrematric.aspx">Login Renewal</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel panel-primary hvr hvr-bob" style="border-color: #589DBF; text-align: left;">
                                        <div class="panel-heading" style="background-color: #589DBF; color: white;">
                                            <h3 class="panel-title">Postmatric Otherthan Inter</h3>
                                        </div>
                                        <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton31" PostBackUrl="RegistrationFormPrematric.aspx">New Registration</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton32" PostBackUrl="RegistrationFormPrematric.aspx">Login Fresh</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton33" PostBackUrl="RegistrationFormPrematric.aspx">Login Renewal</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel panel-primary hvr hvr-bob" style="border-color: #589DBF; text-align: left;">
                                        <div class="panel-heading" style="background-color: #589DBF; color: white;">
                                            <h3 class="panel-title">Postmatric Other State</h3>
                                        </div>
                                        <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton52" PostBackUrl="RegistrationFormPrematric.aspx">New Registration</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton53" PostBackUrl="RegistrationFormPrematric.aspx">Login Fresh</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton54" PostBackUrl="RegistrationFormPrematric.aspx">Login Renewal</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                </center>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 hvr hvr-box-shadow-inset">
                        <div class="panel panel-primary" style="border-color: #006582; box-shadow: 6px 6px 8px rgb(0 0 0 / 0.2);">
                            <div class="panel-heading panelMainHeading" style="background-color: #006582; color: white;">
                                <h3 class="panel-title">अनुसूचित जाति (Scheduled Caste)</h3>
                            </div>
                            <div class="panel-body" style="padding: 0px">
                                <center>
                                    <div class="panel panel-primary hvr hvr-bob" style="border-color: #589DBF; text-align: left;">
                                        <div class="panel-heading" style="background-color: #589DBF; color: white;">
                                            <h3 class="panel-title">Prematric</h3>
                                        </div>
                                        <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton4" PostBackUrl="RegistrationFormPrematric.aspx">New Registration</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton5" PostBackUrl="RegistrationFormPrematric.aspx">Login Fresh</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton6" PostBackUrl="RegistrationFormPrematric.aspx">Login Renewal</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel panel-primary hvr hvr-bob" style="border-color: #589DBF; text-align: left;">
                                        <div class="panel-heading" style="background-color: #589DBF; color: white;">
                                            <h3 class="panel-title">Postmatric Inter (11-12)</h3>
                                        </div>
                                        <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton34" PostBackUrl="RegistrationFormPrematric.aspx">New Registration</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton35" PostBackUrl="RegistrationFormPrematric.aspx">Login Fresh</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton36" PostBackUrl="RegistrationFormPrematric.aspx">Login Renewal</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel panel-primary hvr hvr-bob" style="border-color: #589DBF; text-align: left;">
                                        <div class="panel-heading" style="background-color: #589DBF; color: white;">
                                            <h3 class="panel-title">Postmatric Otherthan Inter</h3>
                                        </div>
                                        <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton37" PostBackUrl="RegistrationFormPrematric.aspx">New Registration</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton38" PostBackUrl="RegistrationFormPrematric.aspx">Login Fresh</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton39" PostBackUrl="RegistrationFormPrematric.aspx">Login Renewal</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel panel-primary hvr hvr-bob" style="border-color: #589DBF; text-align: left;">
                                        <div class="panel-heading" style="background-color: #589DBF; color: white;">
                                            <h3 class="panel-title">Postmatric Other State</h3>
                                        </div>
                                        <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton49" PostBackUrl="RegistrationFormPrematric.aspx">New Registration</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton50" PostBackUrl="RegistrationFormPrematric.aspx">Login Fresh</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton51" PostBackUrl="RegistrationFormPrematric.aspx">Login Renewal</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                </center>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 hvr hvr-box-shadow-inset">
                        <div class="panel panel-primary" style="border-color: #006582; box-shadow: 6px 6px 8px rgb(0 0 0 / 0.2);">
                            <div class="panel-heading panelMainHeading" style="background-color: #006582; color: white;">
                                <h3 class="panel-title">General Category (सामान्य वर्ग)</h3>
                            </div>
                            <div class="panel-body" style="padding: 0px">
                                <center>
                                    <div class="panel panel-primary hvr hvr-bob" style="border-color: #589DBF; text-align: left;">
                                        <div class="panel-heading" style="background-color: #589DBF; color: white;">
                                            <h3 class="panel-title">Prematric</h3>
                                        </div>
                                        <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton7" PostBackUrl="RegistrationFormPrematric.aspx">New Registration</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton8" PostBackUrl="RegistrationFormPrematric.aspx">Login Fresh</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton9" PostBackUrl="RegistrationFormPrematric.aspx">Login Renewal</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel panel-primary hvr hvr-bob" style="border-color: #589DBF; text-align: left;">
                                        <div class="panel-heading" style="background-color: #589DBF; color: white;">
                                            <h3 class="panel-title">Postmatric Inter (11-12)</h3>
                                        </div>
                                        <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton40" PostBackUrl="RegistrationFormPrematric.aspx">New Registration</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton41" PostBackUrl="RegistrationFormPrematric.aspx">Login Fresh</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton42" PostBackUrl="RegistrationFormPrematric.aspx">Login Renewal</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel panel-primary hvr hvr-bob" style="border-color: #589DBF; text-align: left;">
                                        <div class="panel-heading" style="background-color: #589DBF; color: white;">
                                            <h3 class="panel-title">Postmatric Otherthan Inter</h3>
                                        </div>
                                        <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton48" PostBackUrl="RegistrationFormPrematric.aspx">New Registration</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton47" PostBackUrl="RegistrationFormPrematric.aspx">Login Fresh</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton46" PostBackUrl="RegistrationFormPrematric.aspx">Login Renewal</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel panel-primary hvr hvr-bob" style="border-color: #589DBF; text-align: left;">
                                        <div class="panel-heading" style="background-color: #589DBF; color: white;">
                                            <h3 class="panel-title">Postmatric Other State</h3>
                                        </div>
                                        <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton43" PostBackUrl="RegistrationFormPrematric.aspx">New Registration</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton44" PostBackUrl="RegistrationFormPrematric.aspx">Login Fresh</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="LinkButton45" PostBackUrl="RegistrationFormPrematric.aspx">Login Renewal</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
                <%-- <div class="vc_row wpb_row vc_row-fluid">
                    <div class="wpb_column vc_column_container vc_col-sm-12">
                        <div class="vc_column-inner">
                            <div class="wpb_wrapper">
                                <div class="gen-list no-border no-bg padding-15 border-radius-none box-list   normal-font fore-color-black ">
                                    <ul>
                                        <li class="no-bg gray-border border-radius-medium">
                                            <a href="registration.aspx" class="hvr hvr-forward">
                                                <span class="list-icon no-bg fa fa-user border-radius-round"></span>
                                                <div class="list-text"><strong>New Registration				</strong></div>
                                            </a>
                                        </li>
                                        <li class="no-bg gray-border border-radius-medium">
                                            <a href="LoginStudentPreFresh.aspx" class="hvr hvr-forward">
                                                <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                                <div class="list-text"><strong>Login Fresh (Pre Matric)				</strong></div>
                                            </a>
                                        </li>
                                        <li class="no-bg gray-border border-radius-medium">
                                            <a href="LoginStudentPostInter.aspx" class="hvr hvr-forward">
                                                <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                                <div class="list-text"><strong>Login Fresh (Post Matric)				</strong></div>
                                            </a>
                                        </li>
                                        <li class="no-bg gray-border border-radius-medium">
                                            <a href="LoginStudentPost.aspx" class="hvr hvr-forward">
                                                <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                                <div class="list-text"><strong>Login Fresh (Post Matric other than Inter)				</strong></div>
                                            </a>
                                        </li>
                                        <li class="no-bg gray-border border-radius-medium">
                                            <a href="LoginStudentPostOS.aspx" class="hvr hvr-forward">
                                                <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                                <div class="list-text"><strong>Login Fresh (Post Matric OTHER STATE STUDENTS)				</strong></div>
                                            </a>
                                        </li>
                                        <li class="no-bg gray-border border-radius-medium">
                                            <a href="LoginStudentPreRenew.aspx" class="hvr hvr-forward">
                                                <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                                <div class="list-text"><strong>Login Renew (Pre Matric)				</strong></div>
                                            </a>
                                        </li>
                                        <li class="no-bg gray-border border-radius-medium">
                                            <a href="LoginStudentPostRenewInter.aspx" class="hvr hvr-forward">
                                                <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                                <div class="list-text"><strong>Login Renew (Post Matric)				</strong></div>
                                            </a>
                                        </li>
                                        <li class="no-bg gray-border border-radius-medium">
                                            <a href="LoginStudentPostRenew.aspx" class="hvr hvr-forward">
                                                <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                                <div class="list-text"><strong>Login Renew (Post Matric other than Inter)				</strong></div>
                                            </a>
                                        </li>
                                        <li class="no-bg gray-border border-radius-medium">
                                            <a href="LoginStudentPostRenewOS.aspx" class="hvr hvr-forward">
                                                <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                                <div class="list-text"><strong>Login Renew (Post Matric OTHER STATE STUDENTS)				</strong></div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>
            </div>
        </div>
    </section>
</asp:Content>
