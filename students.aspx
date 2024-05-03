<%@ Page Title="" Language="C#" MasterPageFile="~/BlocksMasterPage.master" AutoEventWireup="true" CodeFile="students.aspx.cs" Inherits="students" %>

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

        @media screen and (max-width: 767px) {
            .minwdth {
                min-width:332px;
            }
        }
        .col-sm-4{
            padding-left:0px;
            padding-right:0px;
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
                <%--               <div class="col-xs-12">
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
                    .panelMainHeading {
                        min-height: 45px;
                        /*min-width: 390px;*/
                    }

                    .panelInside brdrtheme1 {
                        margin: 10px 0 10px 0;
                        width: 100%;
                    }

                        .panelInside brdrtheme1 .panel-heading bgtheme {
                            min-height: 35px;
                        }

                            .panelInside brdrtheme1 .panel-heading bgtheme .panel-title {
                                margin: -4px 0 0 0;
                            }
                </style>
                <script>
                    function showDiv(id) {
                        const divs_id = ["obc", "min", "st", "sc", "gen"];
                        const btns_id = ["btnAll", "btnOBC", "btnMIN", "btnST", "btnSC", "btnGEN"];

                        // Hide all divs
                        divs_id.forEach(item => {
                            document.getElementById(item).style.display = "none";
                        });

                        // Remove btntheme100 class from all buttons
                        btns_id.forEach(item => {
                            document.getElementById(item).classList.remove("btntheme100");
                            document.getElementById(item).classList.add("btntheme75");
                        });

                        if (id === "btnAll") {
                            // Show all divs
                            divs_id.forEach(item => {
                                document.getElementById(item).style.display = "block";
                            });
                        } else {
                            // Show the selected div
                            const showDivId = id.toLowerCase().replace("btn", "");
                            document.getElementById(showDivId).style.display = "block";
                        }

                        // Add btntheme100 class to the selected button
                        document.getElementById(id).classList.remove("btntheme75");
                        document.getElementById(id).classList.add("btntheme100");
                    }
                </script>

                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <center>
                                <span class="btn btntheme100" id="btnAll" onclick="showDiv('btnAll')">All</span>
                                <span class="btn btntheme75" id="btnOBC" onclick="showDiv('btnOBC')">Other Backward Classes</span>
                                <span class="btn btntheme75" id="btnMIN" onclick="showDiv('btnMIN')">MINORITY</span>
                                <span class="btn btntheme75" id="btnST" onclick="showDiv('btnST')">Scheduled Tribes</span>
                                <span class="btn btntheme75" id="btnSC" onclick="showDiv('btnSC')">Scheduled Castes</span>
                                <span class="btn btntheme75" id="btnGEN" onclick="showDiv('btnGEN')">GENERAL</span>
                            </center>
                        </div>
                    </div>  
                    <div class="col-sm-12 content-div" id="obc" style="display: block;">
                        <div class="panel panel-primary  brdrtheme1" style="box-shadow: 6px 6px 8px rgb(0 0 0 / 0.2);">
                            <%--<div class="panel-heading bgtheme panelMainHeading" style="background: #062f4f; background: -webkit-linear-gradient(left, #062f4f, #acbac4); background: -moz-linear-gradient(left, #062f4f, #acbac4); background: -o-linear-gradient(left, #062f4f, #acbac4); background: linear-gradient(to right, #062f4f, #acbac4); color: white;">--%>
                            <div class="panel-heading bgtheme panelMainHeading bgtheme" style="color: white;">
                                <h3 class="panel-title">Other Backward Class Students (अन्य पिछड़ा वर्ग के छात्र/छात्राएं)</h3>
                            </div>
                            <div class="panel-body" style="padding: 0px">
                                <center>
                                    <div class="col-sm-4">
                                        <div class="panel panel-primary hvr hvr-bob panelInside brdrtheme1" style="text-align: left;">
                                            <div class="panel-heading bgtheme bgtheme minwdth" style="color: white;">
                                                <h3 class="panel-title">Prematric (9-10) <br />(पूर्व दशम)</h3>
                                            </div>
                                            <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton13" PostBackUrl="RegistrationFormPrematric.aspx">New Registration (नया पंजीकरण)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton14" PostBackUrl="LoginStudentPreFresh.aspx">Login Fresh (लॉगिन नवीन)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton15" PostBackUrl="LoginStudentPreRenew.aspx">Login Renewal (लॉगिन नवीनीकरण)</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="panel panel-primary hvr hvr-bob panelInside brdrtheme1" style="text-align: left;">
                                            <div class="panel-heading bgtheme minwdth" style="color: white;">
                                                <h3 class="panel-title">Postmatric Inter (11-12) <br />(दशमोत्तर इंटर)</h3>
                                            </div>
                                            <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton10" PostBackUrl="RegistrationFormIntermediate.aspx">New Registration (नया पंजीकरण)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton11" PostBackUrl="LoginStudentPostInter.aspx">Login Fresh (लॉगिन नवीन)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton12" PostBackUrl="LoginStudentPostRenewInter.aspx">Login Renewal (लॉगिन नवीनीकरण)</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="panel panel-primary hvr hvr-bob panelInside brdrtheme1" style="text-align: left;">
                                            <div class="panel-heading bgtheme minwdth" style="color: white;">
                                                <h3 class="panel-title">Postmatric Otherthan Inter <br />(दशमोत्तर इंटर के अलावा)</h3>
                                            </div>
                                            <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton19" PostBackUrl="RegistrationFormInstitute.aspx">New Registration (नया पंजीकरण)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton20" PostBackUrl="LoginStudentPost.aspx">Login Fresh (लॉगिन नवीन)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton21" PostBackUrl="LoginStudentPostRenew.aspx">Login Renewal (लॉगिन नवीनीकरण)</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </center>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-12 content-div" id="min" style="display: block;">
                        <div class="panel panel-primary  brdrtheme1" style="box-shadow: 6px 6px 8px rgb(0 0 0 / 0.2);">
                            <div class="panel-heading bgtheme panelMainHeading" style="color: white;">
                                <h3 class="panel-title">Minorities Students (अल्पसंख्यक छात्र/छात्राएं)</h3>
                            </div>
                            <div class="panel-body" style="padding: 0px">
                                <center>
                                    <div class="col-sm-4">
                                        <div class="panel panel-primary hvr hvr-bob panelInside brdrtheme1" style="text-align: left;">
                                            <div class="panel-heading bgtheme minwdth" style="color: white;">
                                                <h3 class="panel-title">Prematric (9-10) <br />(पूर्व दशम)</h3>
                                            </div>
                                            <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton55" PostBackUrl="RegistrationFormPrematric.aspx">New Registration (नया पंजीकरण)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton56" PostBackUrl="LoginStudentPreFresh.aspx">Login Fresh (लॉगिन नवीन)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton57" PostBackUrl="LoginStudentPreRenew.aspx">Login Renewal (लॉगिन नवीनीकरण)</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="panel panel-primary hvr hvr-bob panelInside brdrtheme1" style="text-align: left;">
                                            <div class="panel-heading bgtheme minwdth" style="color: white;">
                                                <h3 class="panel-title">Postmatric Inter (11-12) <br />(दशमोत्तर इंटर)</h3>
                                            </div>
                                            <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton58" PostBackUrl="RegistrationFormIntermediate.aspx">New Registration (नया पंजीकरण)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton59" PostBackUrl="LoginStudentPostInter.aspx">Login Fresh (लॉगिन नवीन)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton60" PostBackUrl="LoginStudentPostRenewInter.aspx">Login Renewal (लॉगिन नवीनीकरण)</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="panel panel-primary hvr hvr-bob panelInside brdrtheme1" style="text-align: left;">
                                            <div class="panel-heading bgtheme minwdth" style="color: white;">
                                                <h3 class="panel-title">Postmatric Otherthan Inter <br />(दशमोत्तर इंटर के अलावा)</h3>
                                            </div>
                                            <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton61" PostBackUrl="RegistrationFormInstitute.aspx">New Registration (नया पंजीकरण)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton62" PostBackUrl="LoginStudentPost.aspx">Login Fresh (लॉगिन नवीन)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton63" PostBackUrl="LoginStudentPostRenew.aspx">Login Renewal (लॉगिन नवीनीकरण)</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </center>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-12 .content-div" id="st" style="display: block;">
                        <div class="panel panel-primary  brdrtheme1" style="box-shadow: 6px 6px 8px rgb(0 0 0 / 0.2);">
                            <div class="panel-heading bgtheme panelMainHeading" style="color: white;">
                                <h3 class="panel-title">Scheduled Tribes Students (अनुसूचित जनजाति के छात्र/छात्राएं)</h3>
                            </div>
                            <div class="panel-body" style="padding: 0px">
                                <center>
                                    <div class="col-sm-3">
                                        <div class="panel panel-primary hvr hvr-bob panelInside brdrtheme1" style="text-align: left;">
                                            <div class="panel-heading bgtheme minwdth" style="color: white;">
                                                <h3 class="panel-title">Prematric (9-10)<br />
                                                    (पूर्व दशम)</h3>
                                            </div>
                                            <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton1" PostBackUrl="RegistrationFormPrematric.aspx">New Registration (नया पंजीकरण)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton2" PostBackUrl="LoginStudentPreFresh.aspx">Login Fresh (लॉगिन नवीन)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton3" PostBackUrl="LoginStudentPreRenew.aspx">Login Renewal (लॉगिन नवीनीकरण)</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="panel panel-primary hvr hvr-bob panelInside brdrtheme1" style="text-align: left;">
                                            <div class="panel-heading bgtheme minwdth" style="color: white;">
                                                <h3 class="panel-title">Postmatric Inter (11-12)<br />
                                                    (दशमोत्तर इंटर)</h3>
                                            </div>
                                            <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton28" PostBackUrl="RegistrationFormIntermediate.aspx">New Registration (नया पंजीकरण)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton29" PostBackUrl="LoginStudentPostInter.aspx">Login Fresh (लॉगिन नवीन)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton30" PostBackUrl="LoginStudentPostRenewInter.aspx">Login Renewal (लॉगिन नवीनीकरण)</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="panel panel-primary hvr hvr-bob panelInside brdrtheme1" style="text-align: left;">
                                            <div class="panel-heading bgtheme minwdth" style="color: white;">
                                                <h3 class="panel-title">Postmatric Otherthan Inter<br />
                                                    (दशमोत्तर इंटर के अलावा)</h3>
                                            </div>
                                            <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton31" PostBackUrl="RegistrationFormInstitute.aspx">New Registration (नया पंजीकरण)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton32" PostBackUrl="LoginStudentPost.aspx">Login Fresh (लॉगिन नवीन)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton33" PostBackUrl="LoginStudentPostRenew.aspx">Login Renewal (लॉगिन नवीनीकरण)</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="panel panel-primary hvr hvr-bob panelInside brdrtheme1" style="text-align: left;">
                                            <div class="panel-heading bgtheme minwdth" style="color: white;">
                                                <h3 class="panel-title">Postmatric Other State<br />
                                                    (दशमोत्तर अन्य राज्य)</h3>
                                            </div>
                                            <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton52" PostBackUrl="RegistrationFormInstituteOS.aspx">New Registration (नया पंजीकरण)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton53" PostBackUrl="LoginStudentPostOS.aspx">Login Fresh (लॉगिन नवीन)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton54" PostBackUrl="LoginStudentPostRenewOS.aspx">Login Renewal (लॉगिन नवीनीकरण)</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </center>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-12 .content-div" id="sc" style="display: block;">
                        <div class="panel panel-primary  brdrtheme1" style="box-shadow: 6px 6px 8px rgb(0 0 0 / 0.2);">
                            <div class="panel-heading bgtheme panelMainHeading" style="color: white;">
                                <h3 class="panel-title">Scheduled Caste Students (अनुसूचित जाति के छात्र/छात्राएं)</h3>
                            </div>
                            <div class="panel-body" style="padding: 0px">
                                <center>
                                    <div class="col-sm-3">
                                        <div class="panel panel-primary hvr hvr-bob panelInside brdrtheme1" style="text-align: left;">
                                            <div class="panel-heading bgtheme minwdth" style="color: white;">
                                                <h3 class="panel-title">Prematric (9-10)<br />
                                                    (पूर्व दशम)</h3>
                                            </div>
                                            <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton4" PostBackUrl="RegistrationFormPrematric.aspx">New Registration (नया पंजीकरण)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton5" PostBackUrl="LoginStudentPreFresh.aspx">Login Fresh (लॉगिन नवीन)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton6" PostBackUrl="LoginStudentPreRenew.aspx">Login Renewal (लॉगिन नवीनीकरण)</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="panel panel-primary hvr hvr-bob panelInside brdrtheme1" style="text-align: left;">
                                            <div class="panel-heading bgtheme minwdth" style="color: white;">
                                                <h3 class="panel-title">Postmatric Inter (11-12)<br />
                                                    (दशमोत्तर इंटर)</h3>
                                            </div>
                                            <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton34" PostBackUrl="RegistrationFormIntermediate.aspx">New Registration (नया पंजीकरण)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton35" PostBackUrl="LoginStudentPostInter.aspx">Login Fresh (लॉगिन नवीन)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton36" PostBackUrl="LoginStudentPostRenewInter.aspx">Login Renewal (लॉगिन नवीनीकरण)</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="panel panel-primary hvr hvr-bob panelInside brdrtheme1" style="text-align: left;">
                                            <div class="panel-heading bgtheme minwdth" style="color: white;">
                                                <h3 class="panel-title">Postmatric Otherthan Inter<br />
                                                    (दशमोत्तर इंटर के अलावा)</h3>
                                            </div>
                                            <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton37" PostBackUrl="RegistrationFormInstitute.aspx">New Registration (नया पंजीकरण)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton38" PostBackUrl="LoginStudentPost.aspx">Login Fresh (लॉगिन नवीन)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton39" PostBackUrl="LoginStudentPostRenew.aspx">Login Renewal (लॉगिन नवीनीकरण)</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="panel panel-primary hvr hvr-bob panelInside brdrtheme1" style="text-align: left;">
                                            <div class="panel-heading bgtheme minwdth" style="color: white;">
                                                <h3 class="panel-title">Postmatric Other State<br />
                                                    (दशमोत्तर अन्य राज्य)</h3>
                                            </div>
                                            <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton49" PostBackUrl="RegistrationFormInstituteOS.aspx">New Registration (नया पंजीकरण)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton50" PostBackUrl="LoginStudentPostOS.aspx">Login Fresh (लॉगिन नवीन)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton51" PostBackUrl="LoginStudentPostRenewOS.aspx">Login Renewal (लॉगिन नवीनीकरण)</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </center>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-12 content-div" id="gen" style="display: block;">
                        <div class="panel panel-primary  brdrtheme1" style="box-shadow: 6px 6px 8px rgb(0 0 0 / 0.2);">
                            <div class="panel-heading bgtheme panelMainHeading" style="color: white;">
                                <h3 class="panel-title">General Category Students (सामान्य वर्ग के छात्र/छात्राएं)</h3>
                            </div>
                            <div class="panel-body" style="padding: 0px">
                                <center>
                                    <div class="col-sm-3">
                                        <div class="panel panel-primary hvr hvr-bob panelInside brdrtheme1 brdrtheme1" style="text-align: left;">
                                            <div class="panel-heading bgtheme minwdth" style="color: white;">
                                                <h3 class="panel-title">Prematric (9-10)<br />
                                                    (पूर्व दशम)</h3>
                                            </div>
                                            <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton7" PostBackUrl="RegistrationFormPrematric.aspx">New Registration (नया पंजीकरण)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton8" PostBackUrl="LoginStudentPreFresh.aspx">Login Fresh (लॉगिन नवीन)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton9" PostBackUrl="LoginStudentPreRenew.aspx">Login Renewal (लॉगिन नवीनीकरण)</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="panel panel-primary hvr hvr-bob panelInside brdrtheme1 brdrtheme1" style="text-align: left;">
                                            <div class="panel-heading bgtheme minwdth" style="color: white;">
                                                <h3 class="panel-title">Postmatric Inter (11-12)<br />
                                                    (दशमोत्तर इंटर)</h3>
                                            </div>
                                            <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton40" PostBackUrl="RegistrationFormIntermediate.aspx">New Registration (नया पंजीकरण)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton41" PostBackUrl="LoginStudentPostInter.aspx">Login Fresh (लॉगिन नवीन)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton42" PostBackUrl="LoginStudentPostRenewInter.aspx">Login Renewal (लॉगिन नवीनीकरण)</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="panel panel-primary hvr hvr-bob panelInside brdrtheme1 brdrtheme1" style="text-align: left;">
                                            <div class="panel-heading bgtheme minwdth" style="color: white;">
                                                <h3 class="panel-title">Postmatric Otherthan Inter<br />
                                                    (दशमोत्तर इंटर के अलावा)</h3>
                                            </div>
                                            <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton48" PostBackUrl="RegistrationFormInstitute.aspx">New Registration (नया पंजीकरण)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton47" PostBackUrl="LoginStudentPost.aspx">Login Fresh (लॉगिन नवीन)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton46" PostBackUrl="LoginStudentPostRenew.aspx">Login Renewal (लॉगिन नवीनीकरण)</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="panel panel-primary hvr hvr-bob panelInside brdrtheme1 brdrtheme1" style="text-align: left;">
                                            <div class="panel-heading bgtheme minwdth" style="color: white;">
                                                <h3 class="panel-title">Postmatric Other State<br />
                                                    (दशमोत्तर अन्य राज्य)</h3>
                                            </div>
                                            <div class="panel-body" style="padding: 0px; line-height: 30px;">
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton43" PostBackUrl="RegistrationFormInstituteOS.aspx">New Registration (नया पंजीकरण)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton44" PostBackUrl="LoginStudentPostOS.aspx">Login Fresh (लॉगिन नवीन)</asp:LinkButton>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <span class="fa fa-hand-o-right"></span>
                                                    <asp:LinkButton runat="server" ID="LinkButton45" PostBackUrl="LoginStudentPostRenewOS.aspx">Login Renewal (लॉगिन नवीनीकरण)</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
